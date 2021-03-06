from flask import Flask, render_template, request #追加
import flask
from flask_cors import CORS, cross_origin
import re
import MeCab
# TODO フォーマットに沿ってないとき
# 文章ごと

app = Flask(__name__)
CORS(app)
MAX_LEN = 100

def mecab(text):
    m = MeCab.Tagger()
    keywords = m.parse(text)
    meishi_list = []
    meishi_count = 0
    all_count = 0
    for row in keywords.split('\n'):
        if row != 'EOS':
            word = row.split('\t')[1].split(',')[0]
            all_count += 1
        else:
            break

        meishi_list.append(word)

    for word in meishi_list:
        if word == '名詞':
            meishi_count += 1
        elif word == '感動詞':
            return False

    meishi_ration = meishi_count/all_count

    if meishi_ration >= 0.8:
        return False
    else:
        return True



@app.route('/score', methods=['POST']) #Methodを明示する必要あり
def score():
    data = {'success': False}
    if request.method == 'POST':
        content = request.form['content'] # 日報内容

        content = re.sub(r'\s','',content) # 改行,空白削除
        content = re.sub(r'-','',content) # -を削除
        good_content = re.search('##Good(.+)##Keep',content).group(1)
        if good_content == None:
            return flask.jsonify(data)
        else:
            if mecab(good_content):
                data['success'] = True
                good_len = len(good_content)
                print(good_len)
                score = good_len / MAX_LEN
                if score >= 1:
                    score = 1
                score *= 100
                data['score'] = score
            else:
                data['success'] = True
                data['score'] = 0

    return flask.jsonify(data)


if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port=80)

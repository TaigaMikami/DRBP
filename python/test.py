from flask import Flask, render_template, request #追加
import flask
import re

app = Flask(__name__)
MAX_LEN = 1000

@app.route('/score', methods=['POST']) #Methodを明示する必要あり
def score():
    data = {'success':False}
    if request.method == 'POST':
        content = request.form['content'] # 日報内容
        content = re.sub(r'\s','',content) # 改行,空白削除

        print(content)
        good_content = re.search('##.良かった(.+)##',content).group(1)
        if good_content == None:
            return flask.jsonify(data)
        else:
            data['success'] = True

            good_len = len(good_content)
            print(good_len)
            score = good_len / MAX_LEN
            if score >= 1:
                score = 1
            score *= 100

            data['score'] = score
        
    return flask.jsonify(data)

if __name__ == "__main__":
    app.run(debug=True)

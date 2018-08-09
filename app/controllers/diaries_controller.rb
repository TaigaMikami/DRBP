class DiariesController < ApplicationController
  before_action :set_diary, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /diaries
  # GET /diaries.json
  def index
    @diaries = Diary.all
  end

  # GET /diaries/1
  # GET /diaries/1.json
  def show
    @power_rank_diaries = Diary.created_today.sort_by { |d| d.power.point }.reverse
    gon.power = @diary.power.point
  end

  # GET /diaries/new
  def new
    @diary = Diary.new
  end

  # GET /diaries/1/edit
  def edit
  end

  # POST /diaries
  # POST /diaries.json
  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    @point = rand(100)

    respond_to do |format|
      if @diary.save
        Dragon.all.each do |d|
          res = Net::HTTP.post_form(URI.parse('http://0.0.0.0:80/score'),{'content' => @diary.content})
          power_json = JSON.parse(res.body)
          @point = power_json["score"]
          if d.min_power <= @point && d.max_power >= @point
            @power = Power.create(point: @point, diary_id: @diary.id, dragon_id: d.id)
          end
        end

        posted_diary_to_slack

        format.html { redirect_to @diary, notice: 'Diary was successfully created.' }
        format.json { render :show, status: :created, location: @diary }
      else
        format.html { render :new }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaries/1
  # PATCH/PUT /diaries/1.json
  def update
    respond_to do |format|
      if @diary.update(diary_params)
        format.html { redirect_to @diary, notice: 'Diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @diary }
      else
        format.html { render :edit }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: 'Diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def likes_ranking
    @diaries = Diary.all.sort_by { |d| d.likes.count }.reverse
  end

  def power_ranking
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_diary
    @diary = Diary.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def diary_params
    params.require(:diary).permit(:title, :content)
  end

  def posted_diary_to_slack
    notifier = Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'],
                                   username: "日報スカウター") #事前準備で取得したWebhook URL

    attachments = {
      pretext: "#{@diary.user.profile.name}さんの日報です！ :grinning:",
      image_url: "#{@diary&.power&.dragon.image_url}",
      fields: [
        {
          title: "【戦闘力】#{@diary&.power.point}!! #{@diary&.power&.dragon.name}並みの強さです！:muscle:",
        },
        {
          value: "==============================",
        },
        {
          title: "【日報タイトル】:love_letter:	",
          value: "#{@diary.title}",
        },
        {
          title: "【日報内容】:speech_balloon:",
          value: "#{@diary.content}",
        },
        {
          value: "==============================",
        },
      ],
      color: "#439FE0",
      footer: "Posted by tech craft",
      mrkdwn_in: "fields"
    }
    notifier.post attachments: [attachments]
  end
end

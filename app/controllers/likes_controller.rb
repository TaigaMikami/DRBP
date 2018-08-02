class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @diary = Diary.find(params[:diary_id])
    unless @diary.iine?(current_user)
      @diary.iine(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js
      end
    end
  end

  def destroy
    @diary = Like.find(params[:id]).diary
    if @diary.iine?(current_user)
      @diary.uniine(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js
      end
    end
  end
end

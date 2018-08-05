class DiaryRanksController < ApplicationController
  def index
    @new_diary = Diary.created_today.reverse
    @like_rank_diary = Diary.created_today.sort_by { |d| d.likes.count }.reverse
    @power_rank_diary = Diary.created_today.sort_by { |d| d.power.point }.reverse
  end
end

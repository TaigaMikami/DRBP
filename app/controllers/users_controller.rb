class UsersController < ApplicationController
  def show
    @diary = Diary.where(user_id: current_user.id).last
    @diaries = Diary.where(user_id: current_user.id).reverse
    gon.power = @diary.power.point
  end
end

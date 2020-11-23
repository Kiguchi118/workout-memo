class MypagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @workout = current_user.workouts
  end
end

class MypagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @workouts = current_user.workouts.order(id: "DESC")
  end
end

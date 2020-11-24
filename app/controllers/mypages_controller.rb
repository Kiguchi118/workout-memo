class MypagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @workouts = current_user.workouts.order(id: "DESC")

    # 部位ごとの回数
    @data = {}
    partKeys = Workout.parts_i18n.values
    partKeys.each do |part|
      @data.store(part, 0)
    end
    @workouts.each do |workout|
      @data[workout.part_i18n] += 1
    end

  end
end

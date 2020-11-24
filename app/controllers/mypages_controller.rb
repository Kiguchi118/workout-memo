class MypagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @workouts = current_user.workouts.order(id: "DESC")

    # 部位ごとの回数
    @memoData = {}
    partKeys = Workout.parts_i18n.values
    partKeys.each do |part|
      @memoData.store(part, 0)
    end
    @workouts.each do |workout|
      @memoData[workout.part_i18n] += 1
    end

    @bodies = current_user.bodies
    @weightData = {}
    @bodies.last(7).each do |body|
      @weightData.store(body.date.strftime("%m/%d"), body.weight)
    end
    @bodies = @bodies.order(id: "DESC")

    # グラフの上限・下限
    weightDataValues = @weightData.values
    @lowerLimit = weightDataValues.min
    @upperLimit = weightDataValues.max

  end
end

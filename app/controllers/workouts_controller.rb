class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to mypages_path, flash:{success: "記録ができました。"}
    else
      render :new
    end
  end

  def show
    @workout = Workout.where(user_id: current_user.id)
  end

  def edit
  end

  def destroy
  end

  private
    def workout_params
      params.require(:workout).permit(:user_id,:date,:part,:content,:memo)
    end
end

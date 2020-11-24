class BodiesController < ApplicationController
  before_action :authenticate_user!
  def new
    @body = Body.new
  end

  def create
    @body = current_user.bodies.build(body_params)
    height = @body.user.height / 100
    weight = @body.weight
    body_fat_percentage = @body.body_fat_percentage / 100
    @body.bmi = (weight / (height ** 2)).round(2)
    @body.lbm = (weight - (weight * body_fat_percentage)).round(1)
    if @body.save
      redirect_to mypages_path, flash:{success: "体重の記録ができました。"}
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
    def body_params
      params.require(:body).permit(:user_id,:date,:weight,:body_fat_percentage)
    end
end

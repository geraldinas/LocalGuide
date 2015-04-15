class ActivitiesController < ApplicationController

  def index
    @activity = Activity.new
  end  

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:title,:content,:user_id)
  end
end

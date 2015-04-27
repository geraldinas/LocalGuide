class AvailabilitiesController < ApplicationController

  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    @availability = Availability.find(params[:id])
  end

  def new
    @availability = Availability.new
  end 

  def create
    @availability = Availability.create(availability_params)
    redirect_to '/profile'
  end

  def show
    @availability = Availability.find(params[:id])
  end

private
  def availability_params
    params.require(:availability).permit(:start_date, :end_date, :guide_id)
  end  
end

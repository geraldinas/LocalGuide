class AvailabilitiesController < ApplicationController

  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    @availability = Availability.find(params[:id])
    @availability.update(availability_params)
    redirect_to '/profile'
  end

  def new
    @availability = Availability.new
  end 

  def create
    @availability = Availability.create(availability_params)
    if @availability.save
      redirect_to '/profile'
    else
      render :new
    end
  end

  def show
    @availability = Availability.find(params[:id])
  end

  def destroy
    @availability = Availability.find(params[:id])
    @availability.destroy
    redirect_to '/profile'
  end

private
  def availability_params
    params.require(:availability).permit(:start_time, :end_time, :guide_id, :day_id)
  end  
end

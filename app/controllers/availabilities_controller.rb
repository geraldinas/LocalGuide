class AvailabilitiesController < ApplicationController


  def new
    @availability = Availability.new
  end 

    def create
    @availability = Availability.new(availability_params)
      redirect_to '/profile'
  end

private
  def availability_params
    params.require(:availability).permit(:start_date, :end_date,:guide_id)
  end  
end

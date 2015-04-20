class ToursController < ApplicationController

	def create
		@tour = Tour.new(tour_params)
		@tour.save

		redirect_to "/trips/#{@tour.trip.id}"
	end

  def update 
    @tour = Tour.find(params[:id])
    @tour.update(tour_params)

    redirect_to :back 
  end

private

	def tour_params
		params.require(:tour).permit(:status, :activity_id, :start_time, :end_time, :trip_id)
	end
end

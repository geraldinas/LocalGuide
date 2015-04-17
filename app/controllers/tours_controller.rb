class ToursController < ApplicationController

	def create
		@tour = Tour.new(tour_params)
		@tour.save

		redirect_to "/trips/#{@tour.trip.id}"
	end

private

	def tour_params
		params.require(:tour).permit(:activity_id, :start_time, :end_time, :trip_id)
	end
end

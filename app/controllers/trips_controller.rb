class TripsController < ApplicationController

	def new
		@trip = Trip.new 
	end

	def create
		@trip = Trip.new(trip_params)
		@trip.save 

		redirect_to "/trips/#{@trip.id}"
	end

	def show
		@trip = Trip.find(params[:id])
	end

	def index
		@trips = Trip.all
	end

	private

	def trip_params
		params.require(:trip).permit(:city_id, :tourist_id, :start_date, :end_date)
	end

end

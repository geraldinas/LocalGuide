class TripsController < ApplicationController

  def edit
    @trip = Trip.find(params[:id])
  end 
  
  def new
    @trip = Trip.new 
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save 
      redirect_to "/trips/#{@trip.id}"
    else
      render :new
    end
  end


  def update
    @trip = Trip.find(params[:id])
    redirect_to "/trips/#{@trip.id}"
  end

	def show
		@trip = Trip.find(params[:id])
	end

	def index
		@trips = Trip.all
	end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to '/profile'
  end

	private

	def trip_params
		params.require(:trip).permit(:city_id, :tourist_id, :start_date, :end_date)
	end

end

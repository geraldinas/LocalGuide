class ToursController < ApplicationController

	def create
		@tour = Tour.create(tour_params)
    Notification.create(description: "New tour has been booked by #{current_user.name}", user: @tour.guide)
    #UserMailer.tour_request_email(@tour.guide).deliver_now
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

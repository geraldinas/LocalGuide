class ActivitiesController < ApplicationController

  def index
    @trip = Trip.find(params[:id])
    @activity = Activity.all
    @hash = Gmaps4rails.build_markers(@activity) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

	def new
		@activity = Activity.new
	end

	def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to '/profile'
		else
			render :new
		end
	end

	def show
		@activity = Activity.find(params[:id])
    locations = @activity.locations
    @location_json = Gmaps4rails.build_markers(locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.infowindow location.name
      marker.json ({
        
      })
    end
	end

	def edit
    @activity = Activity.find(params[:id])
  end  

  def update
  	@activity = Activity.find(params[:id])
  	@activity.update(activity_params)
  	redirect_to '/profile'
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to '/profile'
  end
	
	private
	
	def activity_params
		params.require(:activity).permit(:name, :description, :guide_id, :avatar, :availability, :locations_attributes => [:name, :address])
	end
end

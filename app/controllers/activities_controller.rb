class ActivitiesController < ApplicationController

	def new
		@activity = Activity.new
	end

	def create
    @activity = Activity.new(activity_params)
		if @activity.save
			redirect_to "/activities/#{@activity.id}"
		else
			render :new
		end
	end

	def show
		@activity = Activity.find(params[:id])
	end

	def edit
    @activity = Activity.find(params[:id])
  end  

  def update
  	@activity = User.find(params[:id])
  	@activity.update(activity_params)
  	redirect_to '/profile'
  end
	
	private
	
	def activity_params
		params.require(:activity).permit(:name, :description, :guide_id, :availability, :locations_attributes => [:name, :address])
	end
end

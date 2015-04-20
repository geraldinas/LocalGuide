class ActivitiesController < ApplicationController

	def new
		@activity = Activity.new
	end

	def create
		@activity = Activity.new(activity_params)
		@activity.save

		redirect_to "/activities/#{@activity.id}"
	end

	def show
		@activity = Activity.find(params[:id])
	end

	def edit
    @activity = Activity.find(params[:id])
  end  

  def update
  	@user = User.find(params[:id])
  	redirect_to '/profile'
  end
	
	private
	
	def activity_params
		params.require(:activity).permit(:name, :description, :guide_id, :availability)
	end
end

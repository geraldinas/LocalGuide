class CitiesController < ApplicationController

	def index
		# find users whose cities match string
		# SELECT users JOIN cities ON cities.id = users.city_id 
		  # WHERE cities.name = rome 
		@guides = User.joins(:city).where("cities.name = '#{params[:search]}' COLLATE NOCASE") 
	end

end
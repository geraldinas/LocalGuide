class ReviewsController < ApplicationController

	def create 
		@review = Review.new(review_params)

		if @review.save
			redirect_to :back, :notice => "Your review has been submitted!"
		end
	end



	private

		def review_params
			params.require(:review).permit(:guide_id, :reviewer_id, :content)
		end


end
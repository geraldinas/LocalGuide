class UsersController < ApplicationController
  def index
  end

  def profile
    #@activity = Activity.new
    @rating = Rating.new
  end

  def show
  end

end

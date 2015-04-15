class UsersController < ApplicationController
  def index
  end

  def profile
    @activity = Activity.new
  end

  def show
  end

end

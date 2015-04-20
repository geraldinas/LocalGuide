class UsersController < ApplicationController
  
  def index
    @trip = Trip.find(params[:trip_id])
    @users = User.where(:city_id => @trip.city_id)   
  end

  def profile
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end  
  
  def update
    @user = User.find(params[:id])
    if User.added_email_and_city?(user_params)
      @user.update(user_params)
      redirect_to '/profile'
    else
      flash[:notice]= "Sorry, please select a valid city and enter your email"
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:city_id, :email)
  end
end
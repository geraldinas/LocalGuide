class UsersController < ApplicationController
  
  def index
    @trip = Trip.find(params[:id])
    @users = @trip.city.users_with_activities
  end

  def guide_profile
    @guide = User.find(params[:id])
    render "guide"
  end

  def guide
    @trip = Trip.find(params[:trip_id])
    @guide = User.find(params[:id])
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
      UserMailer.welcome_email(@user).deliver_now
      redirect_to '/profile'
    else
      flash[:notice]= "Sorry, please select a valid city and enter your email"
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:city_id, :email, :avatar)
  end
end
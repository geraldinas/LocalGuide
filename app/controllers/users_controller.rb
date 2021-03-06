class UsersController < ApplicationController
  
  def index
    @trip  = Trip.find(params[:id])
    @users = @trip.city.users_with_activities
    @users = User.find_with_reputation(:votes, :all, order: "votes desc")
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
    @user = current_user
    @uploader = @user.avatar
    @uploader.success_action_redirect = url_for(
      :controller => 'users', 
      :action => 'upload_success', 
      :id => @user.id, 
      :only_path => false
    )
  end

  def upload_success
    @user = User.find(params[:id])
    @user.key = params[:key]
    # binding.pry
    # @user.remote_avatar_url = @user.avatar.direct_fog_url(with_path: true)
    @user.save!
    redirect_to "/profile"
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

  def vote
    value = params[:type] == "up" ? 1 : -1
    @user = User.find(params[:id])
    @user.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thank you for voting!"
  end
  
  private
  def user_params
    params.require(:user).permit(:city_id, :email, :avatar, :description)
  end
end
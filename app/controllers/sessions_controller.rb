class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    if user.city.nil? || user.email.nil?
      redirect_to edit_user_path(user)
    else  
      redirect_to '/profile'
      flash[:notice] = "Signed In!"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Signed out!"
    redirect_to root_url
  end
end
class UserMailer < ApplicationMailer
   default from: 'geraldinagalvarez@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://google.com'
    mail(to: @user.email, subject: 'Welcome to Local Tour Guide')
  end

  def tour_request_email(user)
    @user = user
    @url = 'http://google.com'
    mail(to: @user.email, subject: 'You have a new request for a tour')
  end
  
end

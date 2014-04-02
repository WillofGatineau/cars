class ConfirmationMailer < ActionMailer::Base
  default from: "cars@yourcars.com"

  def send_confirmation(user_id)
    @user = User.find(user_id)
    mail(to: @user.username, subject: "Welcome to the cars website")
  end  

end

class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end     

  def logged_in?
    current_user != nil
  end  

  helper_method :current_user, :logged_in?
end


require 'bcrypt'
class LoginsController < ApplicationController
  include BCrypt
  def create
    user = User.authenticate(params[:username], params[:password]) 
    if user 
      session[:current_user_id] = user.id
    else
      #insert error here
    end
    
    redirect_to("/users/index")
      
  end     

  def destroy
    @current_user = session[:current_user_id] = nil  
    redirect_to("/users/index")
  end    

end


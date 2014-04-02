class UsersController < ApplicationController

  def index
    if logged_in?
      if !Person.exists?(current_user.id)
        redirect_to("/people/new")  
      end  
    end  
  end

  def new
    @user = User.new
  end

  def create
    if @user = User.create(params[:user])
      puts "test"
      ConfirmationMailer.send_confirmation(@user.id).deliver 
    else
      render "new"
    end

      redirect_to("/users/new") 
  end

  def authorization
    @user = User.where("confirmation_code = ?", params[:confirmation_code])[0]
    if !@user.nil?
      @user.update_attribute(:is_authenticated, 'true')
      @user.update_attribute(:confirmation_code, '')
    end  
  end  
  def update
  end

end


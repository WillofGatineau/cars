class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    if @user = User.create(params[:user])
      #insert success here
    else
      #insert failure here
    end
  end

  def update
  end
end


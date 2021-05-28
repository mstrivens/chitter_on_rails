class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    create_user_object(user_params)
    save_user_object
    redirect_to root_url
  end

  private
  def create_user_object(user_params)
    @user = User.new(user_params)
  end

  def save_user_object
    @user.save
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end

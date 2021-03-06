class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    create_user_object_with(user_params)
    if save_user_object
      redirect_to root_url, notice: "Sign up successful"
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

  def create_user_object_with(user_params)
    @user = User.new(user_params)
  end

  def save_user_object
    @user.save
  end
end

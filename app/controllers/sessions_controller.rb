class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if user_authenticated(params[:password])
      create_session
      redirect_to root_url
    else
      render :new
    end
  end

private

  def user_authenticated(password)
    @user&.authenticate(password)
  end

  def create_session
    session[:user_id] = @user.id
  end
end

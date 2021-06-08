class ApplicationController < ActionController::Base
  helper_method :current_user, :username_of_poster

  def current_user
    if session[:user_id]
      set_current_user_to(session[:user_id])
    else
      @current_user = nil
    end
  end

  def username_of_poster(post)
    @username_of_poster = User.find(post.user_id).username
  end

private

  def set_current_user_to(session_id)
    @current_user ||= User.find(session_id)
  end
end

module PostsHelper

  def username_of_poster(post)
    @username_of_poster = User.find(post.user_id).username
  end

  def current_user
    if session[:user_id]
      set_current_user_to(session[:user_id])
    else
      @current_user = nil
    end
  end

private

  def set_current_user_to(session_id)
    @current_user ||= User.find(session_id)
  end
end

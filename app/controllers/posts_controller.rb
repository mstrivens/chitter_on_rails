class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_url
  end

  def index
    if session[:user_id]
      set_current_user_to(session[:user_id])
      flash[:notice] = "Welcome #{@current_user.username}"
    else
      @welcome = "Welcome to Chitter!"
    end
    @posts = Post.order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end
end

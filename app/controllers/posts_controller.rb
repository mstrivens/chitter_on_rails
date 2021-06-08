class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_url
  end

  def index
    @posts = Post.order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end
end

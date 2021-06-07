class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    redirect_to root_url
  end
end

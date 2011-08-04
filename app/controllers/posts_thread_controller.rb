class PostsThreadController < ApplicationController
  def show
  end

  def new
    @post = Post.new
    @posts_thread = PostsThread.new
  end

  def create
  end
end

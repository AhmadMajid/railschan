class PostsController < ApplicationController
  def create
    @poststhread = Poststhread.find(params[:poststhread_id])
    @post = Post.create!(params[:post])
  end

  def new
    @post = Post.new
  end

  def show
  end

end

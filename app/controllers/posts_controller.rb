class PostsController < ApplicationController
  def create
    @post = Post.create!(params[:post])
  end

  def new
    @post = Post.new
  end

  def show
  end

end

class PostsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.create!(params[:post])
    redirect_to @board, notice: 'Post successful'
  end

  def new
    @post = Post.new
  end

  def show
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])
  end

end

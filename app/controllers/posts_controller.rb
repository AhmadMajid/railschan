class PostsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.create!(params[:post])
    redirect_to @board, notice: 'Post successful'
  end

  def new
  end

  def show
  end

end

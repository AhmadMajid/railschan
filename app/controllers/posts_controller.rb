class PostsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.create!(params[:post])
    #@post.post_number = @board.posts.count + 1
    #@post.save!
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

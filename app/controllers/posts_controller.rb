class PostsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.create!(params[:post])
    redirect_to @board, notice: 'Post successful'
  end

  def new
    @board = Board.find(params[:board_id])
    @post = Post.new
  end

  def show
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])
    @replies = @post.child_posts
  end

end

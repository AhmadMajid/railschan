class PostsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    if(params[:parent_post]) #If I came from the reply post page
      @parent = @board.posts.find(params[:parent_post])
      @post = @parent.child_posts.build(params[:post]).save
    else
      @post = @board.posts.create!(params[:post])
    end
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

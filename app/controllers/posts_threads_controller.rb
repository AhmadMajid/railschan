class PostsThreadsController < ApplicationController
  # GET /posts_threads
  # GET /posts_threads.json
  def index
    @posts_threads = PostsThread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts_threads }
    end
  end

  # GET /posts_threads/1
  # GET /posts_threads/1.json
  def show
    @posts_thread = PostsThread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posts_thread }
    end
  end

  # GET /posts_threads/new
  # GET /posts_threads/new.json
  def new
    @posts_thread = PostsThread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posts_thread }
    end
  end

  # GET /posts_threads/1/edit
  def edit
    @posts_thread = PostsThread.find(params[:id])
  end

  # POST /posts_threads
  # POST /posts_threads.json
  def create
    @posts_thread = PostsThread.new(params[:posts_thread])

    respond_to do |format|
      if @posts_thread.save
        format.html { redirect_to @posts_thread, notice: 'Posts thread was successfully created.' }
        format.json { render json: @posts_thread, status: :created, location: @posts_thread }
      else
        format.html { render action: "new" }
        format.json { render json: @posts_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts_threads/1
  # PUT /posts_threads/1.json
  def update
    @posts_thread = PostsThread.find(params[:id])

    respond_to do |format|
      if @posts_thread.update_attributes(params[:posts_thread])
        format.html { redirect_to @posts_thread, notice: 'Posts thread was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @posts_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts_threads/1
  # DELETE /posts_threads/1.json
  def destroy
    @posts_thread = PostsThread.find(params[:id])
    @posts_thread.destroy

    respond_to do |format|
      format.html { redirect_to posts_threads_url }
      format.json { head :ok }
    end
  end
end

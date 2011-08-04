class PoststhreadsController < ApplicationController
  # GET /poststhreads
  # GET /poststhreads.json
  def index
    @poststhreads = Poststhread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poststhreads }
    end
  end

  # GET /poststhreads/1
  # GET /poststhreads/1.json
  def show
    @poststhread = Poststhread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poststhread }
    end
  end

  # GET /poststhreads/new
  # GET /poststhreads/new.json
  def new
    @poststhread = Poststhread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poststhread }
    end
  end

  # GET /poststhreads/1/edit
  def edit
    @poststhread = Poststhread.find(params[:id])
  end

  # POST /poststhreads
  # POST /poststhreads.json
  def create
    @poststhread = Poststhread.new(params[:poststhread])

    respond_to do |format|
      if @poststhread.save
        format.html { redirect_to @poststhread, notice: 'Poststhread was successfully created.' }
        format.json { render json: @poststhread, status: :created, location: @poststhread }
      else
        format.html { render action: "new" }
        format.json { render json: @poststhread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poststhreads/1
  # PUT /poststhreads/1.json
  def update
    @poststhread = Poststhread.find(params[:id])

    respond_to do |format|
      if @poststhread.update_attributes(params[:poststhread])
        format.html { redirect_to @poststhread, notice: 'Poststhread was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @poststhread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poststhreads/1
  # DELETE /poststhreads/1.json
  def destroy
    @poststhread = Poststhread.find(params[:id])
    @poststhread.destroy

    respond_to do |format|
      format.html { redirect_to poststhreads_url }
      format.json { head :ok }
    end
  end
end

class PhotosController < ApplicationController
  before_filter :find_mem
  before_filter :find_photo, except: [:index,
                                      :new,
                                      :create]
  # GET /photos
  # GET /photos.json
  def index
    @photos = @mem.photos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = @mem.photos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @mem.photos.build(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to [@mem, @photo], notice: 'Photo was successfully created.' }
        format.js
        format.json { render json: [@mem, @photo], status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end

  private

  def find_mem
    @mem = Mem.find(params[:mem_id])
  end

  def find_photo
    @photo = @mem.photos.find(params[:id])
  end
end

class MemsController < ApplicationController
  # GET /mems
  # GET /mems.json
  def index
    @mems = Mem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mems }
    end
  end

  # GET /mems/1
  # GET /mems/1.json
  def show
    @mem = Mem.find(params[:id])
    @photo = @mem.photos.build
    @photos = @mem.photos.all.reverse

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mem }
      format.js
    end
  end

  # GET /mems/new
  # GET /mems/new.json
  def new
    @mem = Mem.new
    @photo = @mem.photos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mem }
    end
  end

  # GET /mems/1/edit
  def edit
    @mem = Mem.find(params[:id])
  end

  # POST /mems
  # POST /mems.json
  def create
    @mem = Mem.new(params[:mem])

    respond_to do |format|
      if @mem.save
        format.html { redirect_to @mem, notice: 'Mem was successfully created.' }
        format.json { render json: @mem, status: :created, location: @mem }
      else
        format.html { render action: "new" }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mems/1
  # PUT /mems/1.json
  def update
    @mem = Mem.find(params[:id])

    respond_to do |format|
      if @mem.update_attributes(params[:mem])
        format.html { redirect_to @mem, notice: 'Mem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mems/1
  # DELETE /mems/1.json
  def destroy
    @mem = Mem.find(params[:id])
    @mem.destroy

    respond_to do |format|
      format.html { redirect_to mems_url }
      format.json { head :no_content }
    end
  end
end

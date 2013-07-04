class BlsController < ApplicationController
  # GET /bls
  # GET /bls.json
  def index
    @bls = Bl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bls }
    end
  end

  # GET /bls/1
  # GET /bls/1.json
  def show
    @bl = Bl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bl }
    end
  end

  # GET /bls/new
  # GET /bls/new.json
  def new
    @bl = Bl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bl }
    end
  end

  # GET /bls/1/edit
  def edit
    @bl = Bl.find(params[:id])
  end

  # POST /bls
  # POST /bls.json
  def create
    @bl = Bl.new(params[:bl])

    respond_to do |format|
      if @bl.save
        format.html { redirect_to @bl, notice: 'Bl was successfully created.' }
        format.json { render json: @bl, status: :created, location: @bl }
      else
        format.html { render action: "new" }
        format.json { render json: @bl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bls/1
  # PUT /bls/1.json
  def update
    @bl = Bl.find(params[:id])

    respond_to do |format|
      if @bl.update_attributes(params[:bl])
        format.html { redirect_to @bl, notice: 'Bl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bls/1
  # DELETE /bls/1.json
  def destroy
    @bl = Bl.find(params[:id])
    @bl.destroy

    respond_to do |format|
      format.html { redirect_to bls_url }
      format.json { head :no_content }
    end
  end
end

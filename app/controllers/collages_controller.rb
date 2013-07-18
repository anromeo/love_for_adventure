class CollagesController < ApplicationController
  before_filter :find_collage, except: [:new, :create]
  def new
    @collage = Collage.new
  end

  def create
    @collage = Collage.new(params[:collage])
    respond_to do |format|
      if @collage.save
        @collage.user_id = current_user.id
        format.html { redirect_to collage_collage_pics_path(@collage)}
        format.js
      else
        format.html { render action: "new", notice: "Sorry, there was a problems."}
        format.js
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_collage
    @collage = Collage.find(params[:id])
  end
end

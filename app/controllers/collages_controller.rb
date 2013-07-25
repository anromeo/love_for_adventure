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
    if @collage.user_id = current_user.id
      @create_new_pics = "set"
    end
    @collage_pics1 = @collage.collage_pics.find_by_position(1)
    @collage_pics2 = @collage.collage_pics.find_by_position(2)
    @collage_pics3 = @collage.collage_pics.find_by_position(3)
    @collage_pics4 = @collage.collage_pics.find_by_position(4)
    @collage_pics5 = @collage.collage_pics.find_by_position(5)
    @collage_pics6 = @collage.collage_pics.find_by_position(6)
    @collage_pics7 = @collage.collage_pics.find_by_position(7)
    @collage_pics8 = @collage.collage_pics.find_by_position(8)
    @collage_pics9 = @collage.collage_pics.find_by_position(9)
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

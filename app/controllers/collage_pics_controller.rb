class CollagePicsController < ApplicationController
  before_filter :find_collage

  def index
    @create_new_pics = "set"
  end

  def new
    if params[:position].present?
      @position = params[:position]
      @collage_pic = @collage.collage_pics.build
      @potential_pics = current_user.photos.all.reverse
    else
      redirect_to @collage
    end
  end

  def create
    @collage_pic = @collage.collage_pics.build(params[:collage_pic])
    respond_to do |format|
      if @collage_pic.save
        format.html{redirect_to @collage}
        format.js
      else
        flash[:notice] = "Sorry, there was a problem."
        format.html{render @collage}
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
    if params[:position].present?
      @position = params[:position]
      @collage_pic = CollagePic.find(params[:id])
      @potential_pics = current_user.photos.all.reverse
    else
      redirect_to @collage
    end
  end

  def update
    @collage_pic = CollagePic.find(params[:id])
    respond_to do |format|
      if @collage_pic.update_attributes(params[:collage_pic])
        format.html{redirect_to @collage}
        format.js
      else
        flash[:notice] = "Sorry, there was a problem."
        format.html{render @collage}
        format.js
      end
    end
  end

  private
  def find_collage
    @collage = Collage.find(params[:collage_id])
  end
end
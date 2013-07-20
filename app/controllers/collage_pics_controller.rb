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
    @collage_pic = @collage.collage_pics.new(params[:collage_pic])
    respond_to do |format|
      if @collage_pic.save
        format.html{redirect_to [@collage, @collage_pic]}
        format.js
      else
        flash[:notice] = "Sorry, there was a problem."
        format.html{render [@collage, @collage_pic]}
        format.js
      end
    end

  end

  def show
    @create_new_pics = "set"
    n = 0
    @collage_pics = Array.new
    9.times.each do
      n += 1
      @collage_pics[n] = @collage.collage_pics.where("position = ?", n)
    end
  end

  def find_collage
    @collage = Collage.find(params[:collage_id])
  end
end
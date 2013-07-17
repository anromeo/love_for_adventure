class CollagePicsController < ApplicationController
  before_filter :find_collage

  def new
    @collage_pic = @collage.collage_pics.build
  end

  def create
    @collage_pic = @collage.collage_pics.new(params[:collage_pic])
  end

  def show
    n = 0
    15.times.each do
      n += 1
      @collage_pic[n] = @collage.collage_pics.where("position = ?", n)
    end
  end

  def find_collage
    @collage = Collage.find(params[:collage_id])
  end
end
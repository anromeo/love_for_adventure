class CollagePic < ActiveRecord::Base
  attr_accessible :bottom, :collage_id, :left, :name, :position, :right, :rotation, :top, :photo_id

  belongs_to :collage
end

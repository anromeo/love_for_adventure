class CollagePic < ActiveRecord::Base
  attr_accessible :bottom, :collage_id, :left, :name, :position, :right, :rotation, :top

  belongs_to :collage
end

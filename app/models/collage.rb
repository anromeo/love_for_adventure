class Collage < ActiveRecord::Base
  attr_accessible :description, :layout, :title, :user_id

  has_many :collage_pics, dependent: :destroy
end

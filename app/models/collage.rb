class Collage < ActiveRecord::Base
  attr_accessible :description, :layout, :title, :user_id
end

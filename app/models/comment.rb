class Comment < ActiveRecord::Base
  attr_accessible :comment, :cthing_id, :cthing_type, :user_id

  belongs_to :cthing, polymorphic: true
end

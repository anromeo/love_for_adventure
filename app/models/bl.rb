class Bl < ActiveRecord::Base
  attr_accessible :item, :mem_id, :rank, :user_id

  belongs_to :user
end

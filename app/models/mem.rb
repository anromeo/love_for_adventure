class Mem < ActiveRecord::Base
  attr_accessible :memory, :title, :user_id

  belongs_to :user
  has_many :photos, dependent: :delete_all
  has_many :tags, dependent: :delete_all
end

class Mem < ActiveRecord::Base
  attr_accessible :memory, :title, :user_id

  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :tags, dependent: :destroy
end

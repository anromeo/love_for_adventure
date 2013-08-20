class Follower < ActiveRecord::Base
  attr_accessible :approve, :follower, :leader

  validates :follower, :leader, presence: true
  has_many :users
end

class Follower < ActiveRecord::Base
  attr_accessible :approve, :follower, :following

  has_many :users
end

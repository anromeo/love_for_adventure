class Follower < ActiveRecord::Base
  attr_accessible :approve, :follower, :following
end

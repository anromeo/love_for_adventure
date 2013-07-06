class InviteRequest < ActiveRecord::Base
  attr_accessible :email, :invite_sent

  validates :email, presence: true, uniqueness: true
end

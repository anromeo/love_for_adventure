class User < ActiveRecord::Base
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  validates :username, uniqueness: true, presence: true

  has_many :mems, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :tag, dependent: :destroy
end

class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  validates :email, presence: true, uniqueness: true
  has_many :messages, through: :events
  validates_confirmation_of :password
end

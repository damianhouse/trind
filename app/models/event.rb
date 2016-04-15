class Event < ActiveRecord::Base
  belongs_to :user
  has_many :messages, through: :events, dependent: :destroy
end

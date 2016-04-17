class Event < ActiveRecord::Base
  belongs_to :searcher, class_name: "User"
  belongs_to :user, class_name: "User"
  has_many :conversations, dependent: :destroy
end

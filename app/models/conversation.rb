class Conversation < ActiveRecord::Base
  belongs_to :event
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User" 
  has_many :messages
end

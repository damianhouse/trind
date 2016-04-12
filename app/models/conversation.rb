class Conversation < ActiveRecord::Base
  belongs_to :event
  has_many :messages
end

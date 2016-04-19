class Conversation < ActiveRecord::Base
  belongs_to :event
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :messages, dependent: :destroy

  def how_many_not_viewed
    messages.reduce(0) {|sum, m| sum += 1 if m.viewed == false}
  end

end

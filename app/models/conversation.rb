class Conversation < ActiveRecord::Base
  belongs_to :event
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :messages, dependent: :destroy

  def how_many_not_viewed
    messages.reduce(0) {|sum, m| sum += 1 if m.viewed == false && m.author != @current_user.id}
  end

  # def total_messages_not_viewed
  #   each.reduce(0) {|sum, c| sum += c.how_many_not_viewed unless c.how_many_not_viewed == 0}
  #   # counter = 0
  #   # each do |c|
  #   #   counter += c.how_many_not_viewed
  #   # end
  #   # counter
  # end

end

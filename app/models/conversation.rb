class Conversation < ActiveRecord::Base
  belongs_to :event
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :messages, dependent: :destroy

  def how_many_not_viewed
    counter = 0
    @current_user.messages do |m|
      counter += 1 if m.viewed == nil
    end
    counter
  end
end

class User < ActiveRecord::Base
  has_secure_password
  has_many :events_as_searcher, class_name: "Event", foreign_key: :searcher_id, dependent: :destroy
  has_many :events_as_user, class_name: "Event", foreign_key: :user_id, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  has_many :messages, through: :events
  has_many :conversations_as_sender, class_name: "Conversation", foreign_key: :sender_id, dependent: :destroy
  has_many :conversations_as_recipient, class_name: "Conversation", foreign_key: :recipient_id, dependent: :destroy
  validates_confirmation_of :password

  def conversations
    (conversations_as_sender + conversations_as_recipient)
  end

  def memories
    (events_as_searcher + events_as_user)
  end
end

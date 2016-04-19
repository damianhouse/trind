json.extract! @conversation, :event_id, :sender_id, :recipient_id, :created_at, :updated_at
json.messages @messages, :body, :author, :viewed
json.not_viewed @not_viewed

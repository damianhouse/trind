json.array!(@conversations) do |conversation|
  json.extract! conversation, :id, :event_id, :sender_id, :recipient_id
  json.url conversation_url(conversation, format: :json)
end

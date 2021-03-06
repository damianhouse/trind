json.conversations @conversations do |conversation|
  if conversation.sender_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.sender.name
    if conversation.sender.photo_url
      json.sender_photo_url conversation.sender.photo_url
    end
    if conversation.messages.last
      json.last_message conversation.messages.last.body
      json.last_time conversation.messages.last.updated_at
    end
  elsif conversation.recipient_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.recipient.name
    if conversation.sender.photo_url
      json.sender_photo_url conversation.recipient.photo_url
    end
    if conversation.messages.last
      json.last_message conversation.messages.last.body
      json.last_time conversation.messages.last.updated_at
    end
  end
end
json.not_viewed @not_viewed

json.conversations @conversations do |conversation|
  if conversation.sender_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.sender.name
    if conversation.sender.photo_url
      json.sender_photo_url conversation.sender.photo_url
    end
    if conversation.messages.last
      json.last_message conversation.messages.last.body
    end
  elsif conversation.recipient_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.recipient.name
    if conversation.sender.photo_url
      json.sender_photo_url conversation.sender.photo_url
    end
    if conversation.messages.last
      json.last_message conversation.messages.last.body
    end
  end
end
json.not_viewed @not_viewed

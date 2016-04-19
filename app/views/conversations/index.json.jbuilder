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
    json.not_viewed conversation.how_many_not_viewed
  elsif conversation.recipient_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.recipient.name
    if conversation.sender.photo_url
      json.sender_photo_url conversation.sender.photo_url
    end
    if conversation.messages.last
      json.last_message conversation.messages.last.body
    end
      json.not_viewed conversation.how_many_not_viewed
  end
end

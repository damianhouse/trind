json.conversations @conversations do |conversation|
  if conversation.sender_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.sender.name
    json.sender_photo_url conversation.sender.photo_url
    json.last_message conversation.messages.last.body
  elsif conversation.recipient_id != @current_user.id
    json.conversation_id conversation.id
    json.sender_name conversation.recipient.name
    json.sender_photo_url conversation.recipient.photo_url
    json.last_message conversation.messages.last.body
  end
end

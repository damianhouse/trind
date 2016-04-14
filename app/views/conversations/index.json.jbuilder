json.conversations @conversations do |conversation|
  if conversation.sender.name != @current_user.name
    json.sender_name conversation.sender.name
    json.sender_photo_url conversation.sender.photo_url
  elsif conversation.recipient_name != @current_user.name
    json.recipient_name conversation.recipient.name
    json.recipient_photo_url conversation.recipient.photo_url
  end
end

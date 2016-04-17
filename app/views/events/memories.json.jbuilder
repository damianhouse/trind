json.events @events do |event|
  if event.posterinterested == @current_user.id
    json.photo_url User.find(event.searcherinterested).photo_url
  elsif event.searcherinterested == @current_user.id
    json.photo_url User.find(event.posterinterested).photo_url
  end
end

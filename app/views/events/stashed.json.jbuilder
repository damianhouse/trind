json.events @events do |e|
  json.event e, :user_id, :title, :interests, :description, :location
  json.user e.user, :name, :summary, :photo_url
end

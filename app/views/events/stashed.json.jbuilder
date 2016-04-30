json.events @events do |e|
  json.event e, :id, :user_id, :title, :interests, :description, :location, :latitude, :longitude
  json.user e.user, :name, :summary, :photo_url
end

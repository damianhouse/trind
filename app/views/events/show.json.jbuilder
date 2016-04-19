json.event @event, :user_id, :title, :interests, :description, :location, :latitude, :longitude
  json.user @event.user, :name, :summary, :photo_url

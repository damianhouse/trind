json.events @events do |e|
  json.extract! e, :id, :title, :interests, :description, :location
  json.user e.user, :name, :summary, :photo_url
end

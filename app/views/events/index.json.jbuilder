json.events @events do |e|
  json.extract! e, :title, :interests, :description, :location
  json.user e.user, :name, :summary, :photo_url
end

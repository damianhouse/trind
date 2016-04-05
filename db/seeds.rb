# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d = User.create!(name: "Damian House", email: "damianhouse@gmail.com", password: "password")
q = User.create!(name: "Quentin Hill", email: "quentinhill@gmail.com", password: "password")
e = Event.create!(user_id: d.id, searcher_id: q.id, interests: "coffee", description: "Grab some coffee", location: "cocoa cinnamon", success: true )
Message.create!(event_id: e.id, searcher_id: q.id, user_id: d.id, message: "I would love to chat over a latte!", viewed: true)

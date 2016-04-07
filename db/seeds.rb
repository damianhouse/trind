# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d = User.create!(name: "Damian House", email: "damianhouse@gmail.com", password: "password")
q = User.create!(name: "Quentin Hill", email: "quentinhill@gmail.com", password: "password")
e = Event.create!(user_id: d.id, searcher_id: q.id, interests: "coffee", description: "Grab some coffee", location: "Cocoa Cinnamon", success: true )
Message.create!(event_id: e.id, searcher_id: q.id, user_id: d.id, message: "I would love to chat over a latte!", viewed: true)

a = User.create!(name: "Ashley Thompson", email: "ashley@gmail.com", password: "password")
b = User.create!(name: "Bob White", email: "bobwhite@gmail.com", password: "password")
e2 = Event.create!(user_id: d.id, searcher_id: q.id, interests: "coffee", description: "Grab some coffee", location: "Starbucks", success: true )
Message.create!(event_id: e2.id, searcher_id: q.id, user_id: d.id, message: "I would love to chat over a latte!", viewed: true)

e3 = Event.create!(user_id: d.id, searcher_id: a.id, interests: "roller skating", description: "Grab some coffee", location: "Skate Dates", success: true )
Message.create!(event_id: e3.id, searcher_id: a.id, user_id: d.id, message: "I would love to chat and skate!", viewed: true)

e4 = Event.create!(user_id: d.id, searcher_id: b.id, interests: "cheese", description: "Try cheeses", location: "Southern Season", success: true )
Message.create!(event_id: e4.id, searcher_id: b.id, user_id: d.id, message: "I would love to chat and try cheese!", viewed: true)

e5 = Event.create!(user_id: q.id, searcher_id: a.id, interests: "beer", description: "Grab a beer", location: "Tyler's Taproom", success: true )
Message.create!(event_id: e5.id, searcher_id: a.id, user_id: q.id, message: "I would love to chat over a beer!", viewed: true)

e6 = Event.create!(user_id: q.id, searcher_id: b.id, interests: "long walk", description: "Nice stroll", location: "beach", success: true )
Message.create!(event_id: e6.id, searcher_id: b.id, user_id: q.id, message: "I would love to chat and walk!", viewed: true)

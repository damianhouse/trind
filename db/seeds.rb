# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d = User.create!(name: "Damian House", email: "damianhouse@gmail.com", password: "password", photo_url: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/12115789_10153348777188931_7848934254023919923_n.jpg?oh=5221f3666037c5b3c794862a91cc1048&oe=57BAAF6A")
q = User.create!(name: "Quentin Hill", email: "quentinhill@gmail.com", password: "password", photo_url: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/12115789_10153348777188931_7848934254023919923_n.jpg?oh=5221f3666037c5b3c794862a91cc1048&oe=57BAAF6A")
e = Event.create!(title: "What's up bae?", user_id: d.id, searcher_id: q.id, interests: "coffee", description: "I like the way the booty go. I love it when the booty GOOOO. Love it when the booty go, in that thong tha thong thong thong", location: "Cocoa Cinnamon", success: true )
Message.create!(event_id: e.id, searcher_id: q.id, user_id: d.id, message: "I would love to chat over a latte!", viewed: true)

a = User.create!(name: "Ashley Thompson", email: "ashley@gmail.com", password: "password", photo_url: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/12115789_10153348777188931_7848934254023919923_n.jpg?oh=5221f3666037c5b3c794862a91cc1048&oe=57BAAF6A")
b = User.create!(name: "Bob White", email: "bobwhite@gmail.com", password: "password", photo_url: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/12115789_10153348777188931_7848934254023919923_n.jpg?oh=5221f3666037c5b3c794862a91cc1048&oe=57BAAF6A")
e2 = Event.create!(title: "The Struggle is Real", user_id: d.id, searcher_id: q.id, interests: "coffee", description: "Grab some coffee", location: "Right now hearing this Mexican music I am craving a burrito so hard it's ridic", success: true )
Message.create!(event_id: e2.id, searcher_id: q.id, user_id: d.id, message: "I would love to chat over a latte!", viewed: true)

e3 = Event.create!(title: "It's Mr. Steal yo girl", user_id: d.id, searcher_id: a.id, interests: "roller skating", description: "Baby I'mma be straight up Don’t waste no time I know you ain’t my, you ain’t my baby", location: "Skate Dates", success: true )
Message.create!(event_id: e3.id, searcher_id: a.id, user_id: d.id, message: "I would love to chat and skate!", viewed: true)

e4 = Event.create!(title: "Check it, Call lil Ceese and tell that", user_id: d.id, searcher_id: b.id, interests: "cheese", description: "mafucka to bring me some ma'fuckn stuff to the crib yo", location: "Southern Season", success: true )
Message.create!(event_id: e4.id, searcher_id: b.id, user_id: d.id, message: "I would love to chat and try cheese!", viewed: true)

e5 = Event.create!(title: "Gotta pause for a minute now i'm right back", user_id: q.id, searcher_id: a.id, interests: "beer", description: "In it on a scale from 1 to 10 my girl be a 20 my girl so bad", location: "Tyler's Taproom", success: true )
Message.create!(event_id: e5.id, searcher_id: a.id, user_id: q.id, message: "I would love to chat over a beer!", viewed: true)

e6 = Event.create!(title: "This is for the ones or while with it", user_id: q.id, searcher_id: b.id, interests: "long walk", description: "He stood emotionless drop the glass screaming don't blast here's the stash, a 100 cash just don't shoot my ass please!", location: "beach", success: true )
Message.create!(event_id: e6.id, searcher_id: b.id, user_id: q.id, message: "I would love to chat and walk!", viewed: true)

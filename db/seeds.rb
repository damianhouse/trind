# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d = User.create!(name: "Damian House", email: "damianhouse@gmail.com", password: "password", photo_url: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/12115789_10153348777188931_7848934254023919923_n.jpg?oh=5221f3666037c5b3c794862a91cc1048&oe=57BAAF6A")
q = User.create!(name: "Daniel Pipkin", email: "dpip@gmail.com", password: "password", photo_url: "https://scontent-iad3-1.xx.fbcdn.net/hphotos-xpt1/v/t1.0-9/12647473_954176544677195_4038522416851246298_n.jpg?oh=3c4657a3ca4c29d472bd4214e8587048&oe=577D91E2")
e = Event.create!(title: "All I Need", user_id: d.id, searcher_id: q.id, interests: "coffee", description: "Her green plastic watering can For her fake Chinese rubber plant", location: "Cocoa Cinnamon", searcherinterested: d.id, posterinterested: q.id )
c = Conversation.create!(event_id: e.id, sender_id: q.id, recipient_id: d.id )
Message.create!(conversation_id: c.id, body: "I would love to chat over a latte!", author: q.id, viewed: true)
Message.create!(conversation_id: c.id, body: "Sounds good lets meet!", author: d.id, viewed: true)

a = User.create!(name: "Jennifer Lawerence", email: "jlaw@gmail.com", password: "password", photo_url: "http://dev.modamob.com/sites/modamob.com/files/p189bojbnggur1n8vmrj1cop1h2u4.jpg")
b = User.create!(name: "Evan Ebonertz", email: "ebonertz@gmail.com", password: "password", photo_url: "https://scontent-iad3-1.xx.fbcdn.net/hphotos-xla1/v/t1.0-9/12311233_2826081376435_1929139726470349081_n.jpg?oh=ac412507cff053555cc0a449463f3d36&oe=57B3D7BA")

e2 = Event.create!(title: "The Struggle is Real", user_id: d.id, searcher_id: q.id, interests: "coffee", description: "In the fake plastic earth That she bought from a rubber man", location: "London", searcherinterested: a.id, posterinterested: b.id)
c2 = Conversation.create!(event_id: e2.id, sender_id: a.id, recipient_id: b.id )
Message.create!(conversation_id: c2.id, body: "I would love to chat over a latte!", author: a.id, viewed: true)
Message.create!(conversation_id: c2.id, body: "Sounds good lets meet!", author: b.id, viewed: true)

ak = User.create!(name: "Anna Kendrick", email: "ak@gmail.com", password: "password", photo_url: "http://static.dnaindia.com/sites/default/files/2014/11/15/283921-anna-kendrick.jpg")


e3 = Event.create!(title: "Karma Police", user_id: d.id, searcher_id: a.id, interests: "roller skating", description: "In a town full of rubber plans To get rid of itself", location: "Skate Dates", searcherinterested: d.id, posterinterested: a.id )
c3 = Conversation.create!(event_id: e3.id, sender_id: a.id, recipient_id: d.id )
Message.create!(conversation_id: c3.id, body: "I would love to chat over a latte!", author: a.id, viewed: true)
Message.create!(conversation_id: c3.id, body: "Sounds good lets meet!", author: d.id, viewed: true)

e4 = Event.create!(title: "Fake Plastic Trees", user_id: d.id, searcher_id: b.id, interests: "cheese", description: "She lives with a broken man A cracked polystyrene man", location: "Southern Season", searcherinterested: d.id, posterinterested: b.id )
c4 = Conversation.create!(event_id: e4.id, sender_id: b.id, recipient_id: d.id )
Message.create!(conversation_id: c4.id, body: "I would love to chat over a latte!", author: b.id, viewed: true)
Message.create!(conversation_id: c4.id, body: "Sounds good lets meet!", author: d.id, viewed: true)

e5 = Event.create!(title: "No Surprises", user_id: q.id, searcher_id: a.id, interests: "beer", description: "Who just crumbles and burns He used to do surgery", location: "Tyler's Taproom", searcherinterested: q.id, posterinterested: a.id )
c5 = Conversation.create!(event_id: e5.id, sender_id: q.id, recipient_id: d.id )
Message.create!(conversation_id: c5.id, body: "I would love to chat over a latte!", author: q.id, viewed: true)
Message.create!(conversation_id: c5.id, body: "Sounds good lets meet!", author: d.id, viewed: true)

e6 = Event.create!(title: "High and Dry", user_id: q.id, searcher_id: b.id, interests: "long walk", description: "My fake plastic love But I can't help the feeling", location: "beach", searcherinterested: q.id, posterinterested: b.id)
c6 = Conversation.create!(event_id: e6.id, sender_id: q.id, recipient_id: b.id )
Message.create!(conversation_id: c6.id, body: "I would love to chat over a latte!", author: b.id, viewed: true)
Message.create!(conversation_id: c6.id, body: "Sounds good lets meet!", author: q.id, viewed: true)

e7 = Event.create!(title: "White Water Rafting", user_id: d.id, searcher_id: ak.id, interests: "watersports", description: "White water rafting trip", location: "Asheville", searcherinterested: ak.id, posterinterested: d.id )
c7 = Conversation.create!(event_id: e7.id, sender_id: ak.id, recipient_id: d.id )
Message.create!(conversation_id: c7.id, body: "I want to jump in the water", author: ak.id, viewed: true)
Message.create!(conversation_id: c7.id, body: "Me too! This will be fun!", author: d.id, viewed: true)

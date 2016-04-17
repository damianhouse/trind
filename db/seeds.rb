# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d = User.create!(name: "Damian House", email: "damianhouse@gmail.com", password: "password", photo_url: "https://s3.amazonaws.com/trind/IMG_2705.jpg")
q = User.create!(name: "Daniel Pipkin", email: "dpip@gmail.com", password: "password", photo_url: "https://scontent-iad3-1.xx.fbcdn.net/hphotos-xpt1/v/t1.0-9/12647473_954176544677195_4038522416851246298_n.jpg?oh=3c4657a3ca4c29d472bd4214e8587048&oe=577D91E2")
a = User.create!(name: "Jennifer Lawerence", email: "jlaw@gmail.com", password: "password", photo_url: "http://dev.modamob.com/sites/modamob.com/files/p189bojbnggur1n8vmrj1cop1h2u4.jpg")
b = User.create!(name: "Evan Ebonertz", email: "ebonertz@gmail.com", password: "password", photo_url: "https://scontent-iad3-1.xx.fbcdn.net/hphotos-xla1/v/t1.0-9/12311233_2826081376435_1929139726470349081_n.jpg?oh=ac412507cff053555cc0a449463f3d36&oe=57B3D7BA")
ak = User.create!(name: "Anna Kendrick", email: "ak@gmail.com", password: "password", photo_url: "http://static.dnaindia.com/sites/default/files/2014/11/15/283921-anna-kendrick.jpg")

e = Event.create!(title: "Cake and Coffee", user_id: d.id, searcher_id: q.id, interests: "coffee cake", description: "Looking for someone to have a coffee and chat. Maybe some cake.", location: "Cocoa Cinnamon", searcherinterested: d.id, posterinterested: q.id )
c = Conversation.create!(event_id: e.id, sender_id: q.id, recipient_id: d.id )
Message.create!(conversation_id: c.id, body: "I would love to chat over a latte!", author: q.id, viewed: true)
Message.create!(conversation_id: c.id, body: "Sounds good. I can be there by 1.", author: d.id, viewed: true)
Message.create!(conversation_id: c.id, body: "I'll see you at 1. I'm wearing a pink shirt.", author: q.id, viewed: true)

e2 = Event.create!(title: "Wall climb", user_id: d.id, searcher_id: q.id, interests: "wall climb", description: "Looking for someone to wall climb with this evening. I'm an interemediate climber.", location: "Triangle Rock Club, Cary, NC", searcherinterested: a.id, posterinterested: b.id)
c2 = Conversation.create!(event_id: e2.id, sender_id: a.id, recipient_id: b.id )
Message.create!(conversation_id: c2.id, body: "I was heading there tonight anyway. What time do you want to go?", author: a.id, viewed: true)
Message.create!(conversation_id: c2.id, body: "Great! I'm free after 6.", author: b.id, viewed: true)
Message.create!(conversation_id: c2.id, body: "I need to stop at home first how about 6:30?", author: a.id, viewed: true)
Message.create!(conversation_id: c2.id, body: "6:30 is perfect. See you then.", author: b.id, viewed: true)


e3 = Event.create!(title: "Drink a beer", user_id: d.id, searcher_id: a.id, interests: "beer brewery tour", description: "Wanting to try a couple bars tonight", location: "Alley 26, Durham, NC", searcherinterested: d.id, posterinterested: a.id )
c3 = Conversation.create!(event_id: e3.id, sender_id: a.id, recipient_id: d.id )
Message.create!(conversation_id: c3.id, body: "I'm down for some beers tonight. Where are you planning on going?", author: a.id, viewed: true)
Message.create!(conversation_id: c3.id, body: "Cool. I am thinking about going to Criterion, Bar Virgil, and Alley 26.", author: d.id, viewed: true)
Message.create!(conversation_id: c3.id, body: "Perfect. I've never been to Bar Virgil. I'm free after 7. What time do you want to go?", author: a.id, viewed: true)
Message.create!(conversation_id: c3.id, body: "How about starting at Alley 26 at 8?", author: d.id, viewed: true)
Message.create!(conversation_id: c3.id, body: "See you then. I'm wearing a Daft Punk shirt.", author: a.id, viewed: true)

e4 = Event.create!(title: "18 Holes", user_id: d.id, searcher_id: b.id, interests: "golf", description: "I shoot on average 90 to 100. I have an 8 o'clock tee time for course 1", location: "Pinehurst Golf Course", searcherinterested: d.id, posterinterested: b.id )
c4 = Conversation.create!(event_id: e4.id, sender_id: b.id, recipient_id: d.id )
Message.create!(conversation_id: c4.id, body: "Sounds perfect. We shoot about the same. I'll be there at 7 to hit the driving range first and warm up.", author: b.id, viewed: true)
Message.create!(conversation_id: c4.id, body: "I'll see you at the driving range.", author: d.id, viewed: true)

e5 = Event.create!(title: "Bowling", user_id: q.id, searcher_id: a.id, interests: "bowling", description: "Looking to knock some pins over with another amateur", location: "AMC Bowling, Cary, NC", searcherinterested: q.id, posterinterested: a.id )
c5 = Conversation.create!(event_id: e5.id, sender_id: q.id, recipient_id: a.id )
Message.create!(conversation_id: c5.id, body: "I haven't bowled in forever. What time do you want to go?", author: q.id, viewed: true)
Message.create!(conversation_id: c5.id, body: "Around 8 is a good time for me. I'll see you then?", author: a.id, viewed: true)
Message.create!(conversation_id: c5.id, body: "Perfect. I'm the guy with the orange pants and the rose in his clear bowling ball.", author: q.id, viewed: true)

e6 = Event.create!(title: "Durham Bull's Game", user_id: q.id, searcher_id: b.id, interests: "baseball relax", description: "I have an extra ticket and don't want to go alone", location: "Durham Bull's Athletic Park", searcherinterested: q.id, posterinterested: b.id)
c6 = Conversation.create!(event_id: e6.id, sender_id: q.id, recipient_id: b.id )
Message.create!(conversation_id: c6.id, body: "What time can I meet you there? I'll buy you a beer since you have my ticket.", author: b.id, viewed: true)
Message.create!(conversation_id: c6.id, body: "The game is at 7 so 6:45? The beer sounds great. I'll meet you at the entrance.", author: q.id, viewed: true)

e7 = Event.create!(title: "Pedicures", user_id: ak.id, searcher_id: a.id, interests: "manicure pedicure", description: "I have a reservation at the spa for two at 11 if anyone wants to join me", location: "The Umstead Hotel and Spa, Cary, NC", searcherinterested: a.id, posterinterested: ak.id )
c7 = Conversation.create!(event_id: e7.id, sender_id: a.id, recipient_id: ak.id )
Message.create!(conversation_id: c7.id, body: "Just what I need and I couldn't get a reservation. I'll buy you a mimosa", author: a.id, viewed: true)
Message.create!(conversation_id: c7.id, body: "Great. I'll take mine without the orange juice please. This is going to be great.", author: ak.id, viewed: true)

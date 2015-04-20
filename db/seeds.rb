us = Country.create(name: "USA")
nyc = City.create(name: "NYC", country_id: us.id)
bob = User.create(name: "Robert", nickname: "Bob", image_url: "http://media.treehugger.com/profiles/bio-2011-km.jpg.50x50_q70_crop-smart.jpg", description: "I love burgers and I'm free on Fridays.", city_id: nyc.id)
louise = User.create(name: "Lola", nickname: "Louise", image_url: "http://media.treehugger.com/profiles/bio-2011-km.jpg.50x50_q70_crop-smart.jpg", description: "I love bunny ear hats and I'm free on thursdays.", city_id: nyc.id)

karaoke = Activity.create(name: "Karaoke bar", description: "get drunk", guide_id: louise.id)

italy = Country.create(name: "Italy")
rome = City.create(name: "Rome", country_id: italy.id)
simone = User.create(name: "Simone", nickname: "Simon", image_url: "http://media.treehugger.com/profiles/bio-2011-km.jpg.50x50_q70_crop-smart.jpg", description: "My name is Simone and im free on Tuesdays.", email:"geraldinagalvarez@gmail.com", city_id: rome.id)

linda = User.create(name: "Linda", nickname: "Lin", image_url: "http://media.treehugger.com/profiles/bio-2011-km.jpg.50x50_q70_crop-smart.jpg", description: "My name is Linda and im free on Wednesday.", city_id: rome.id)

colosseum = Activity.create(name: "Visit colosseum", description:"Have fun", guide_id: simone.id)

italy_trip = Trip.create(tourist_id: bob.id, city_id: rome.id, start_date: Date.today, end_date: Date.today + 5)
 
colosseum_tour = Tour.create(trip_id: italy_trip.id, activity_id: colosseum.id, start_time: Date.today + 1, end_time: Date.today + 3)

nyc_trip = Trip.create(tourist_id: linda.id, city_id: nyc.id, start_date: Date.today, end_date: Date.today + 5)

karaoke_tour = Tour.create(trip_id: nyc_trip.id, activity_id: karaoke.id, start_time: Date.today + 1, end_time: Date.today + 3)

new_tour_booked = Notification.create(description: "Hi, I would like to book your tour", user: simone)
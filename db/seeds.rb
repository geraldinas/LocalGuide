a =Country.create("name"=>"France")
b= Country.create("name"=>"Belgium")
c= Country.create("name"=>"Germany")
d=Country.create("name"=>"Netherlands")

us = Country.create(name: "USA")

days = Day.create([{name: "Monday"},{name: "Tuesday"},{name: "Wednesday"},{name: "Thursday"}, {name: "Friday"}, {name: "Saturday"}, {name: "Sunday"}])

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

country = Country.create(
  [
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country},
    {name: Faker::Address.country}
  ]
)

country = City.create(
  [
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id},
    {name:Faker::Address.city ,country_id:Country.all.sample.id}
  ]
)


users = User.create(
  [
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email},
    {name: Faker::Name.name, nickname: Faker::Name.name, image_url: Faker::Avatar.image, description: Faker::Lorem.sentence, city_id: City.all.sample.id, email: Faker::Internet.email}
  ]
)

days = Day.create(
  [
    {name: "Monday"},
    {name: "Tuesday"},
    {name: "Wednesday"},
    {name: "Thursday"},
    {name: "Friday"},
    {name: "Saturday"},
    {name: "Sunday"}
  ]
)

activities = Activity.create(
  [
    {name: "Visit colosseum", description:"Have fun", guide_id:User.all.sample.id },
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id},
    {name: Faker::Commerce.department, description: Faker::Lorem.sentences, guide_id: User.all.sample.id}
  ]
  )

trips = Trip.create(
  [
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5},
    {tourist_id: User.all.sample.id, city_id: City.all.sample.id, start_date: Faker::Date.forward, end_date: Faker::Date.forward + 5}

  ]
)

tours = Tour.create(
  [
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3},
    {trip_id: City.all.sample.id, activity_id: Activity.all.sample.id, start_time: Faker::Date.forward, end_time: Faker::Date.forward + 3}
  ]
)

#new_tour_booked = Notification.create(
  # [
  #   {description: "Hi, I would like to book your tour", user: User.all.sample.name}
  # ]
  # )

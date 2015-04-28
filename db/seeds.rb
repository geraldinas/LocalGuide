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

new_tour_booked = Notification.create(
  [
    {description: "Hi, I would like to book your tour", user: User.all.sample.name}
  ]
  )
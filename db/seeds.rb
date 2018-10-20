require 'faker'
require 'date'

80.times do
  User.create(
    username: Faker::Internet.username(6..15),
    password: Faker::Internet.password(9, 31),
    email: Faker::Internet.email,
    zipcode: Faker::Address.zip,
    bio: Faker::Hipster.paragraph(1),
    # administrator: false
  )
end

tours = [
  {
    start_time: DateTime.new(2018, 11, 3, 18),
    end_time: DateTime.new(2018, 11, 3, 21),
    price: 20,
  },
  {
    start_time: DateTime.new(2018, 11, 7, 18),
    end_time: DateTime.new(2018, 11, 7, 21),
    price: 15,
  },
  {
    start_time: DateTime.new(2018, 11, 10, 18),
    end_time: DateTime.new(2018, 11, 10, 21),
    price: 20,
  },
  {
    start_time: DateTime.new(2018, 11, 17, 18),
    end_time: DateTime.new(2018, 11, 17, 21),
    price: 15,
  },
  {
    start_time: DateTime.new(2018, 11, 21, 18),
    end_time: DateTime.new(2018, 11, 21, 21),
    price: 20,
  }
]

tours.each do |tour|
  Tour.create(tour)
end

tour_incrementor = 1
paid_boolean = true

User.all.each do |user|
  Reservation.create(
    user_id: user.id,
    tour_id: tour_incrementor,
  )
  tour_incrementor += 1
  if tour_incrementor == 6
    tour_incrementor = 1
  end
end

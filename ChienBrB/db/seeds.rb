# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

10.times do
  city = City.create!(city_name: Faker::HarryPotter.location)
end
20.times do
  dog = Dog.create!(dog_name: Faker::Name.first_name, city_id: (rand(10)+1))
end
20.times do
  dogsitter = Dogsitter.create!(dogsitter_name: Faker::Name.first_name)
end
20.times do
  stroll = Stroll.create!(stroll_date: Faker::Date.forward(50), dogsitter_id: (rand(20) + 1), dog_id: (rand(20) + 1))
end

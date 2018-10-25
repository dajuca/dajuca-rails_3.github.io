# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Job.field, postal_code: Faker::Number.number(6))
end
# 10.times do
#   patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#end
# 15.times do
#   appointment = Appointment.create!(date: Faker::Date.forward(15), doctor_id: rand(0..5), patient_id: rand(0..10))
# end

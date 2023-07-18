# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "destroying bookings"
Booking.destroy_all
puts "destroying rooms"
Room.destroy_all
puts "destroying users"
User.destroy_all
puts "database cleaned"

puts "creating users"
toto = User.create!(
  prenom: "Toto",
  nom: "Titi",
  email: "toto@gmail.com",
  password: "123456"
)
puts "users created"

puts "creating rooms"
room1 = Room.create!(
  number: 1,
  price_per_night: 30,
  description: "trop belle",
  surface: 20,
  capacite: 2,
  image_url: "room1.jpg"
)
room2 = Room.create!(
  number: 2,
  price_per_night: 40,
  description: "trop belle et plus grande",
  surface: 30,
  capacite: 4,
  image_url: "room2.jpg"
)
puts "rooms created"

puts "creating bookings"
Booking.create!(
  user: toto,
  room: room1,
  start_date: Date.parse("01-08-2023", "%d-%m-%Y"),
  end_date: Date.parse("01-09-2023", "%d-%m-%Y")
)
puts "bookings created"

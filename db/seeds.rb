# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Car.destroy_all
User.destroy_all

user1 = User.create!(email: "isadou@carbook.com", password: "123456")
p "#{user1.email} created"
user2 = User.create!(email: "adele@carbook.com", password: "123456")
p "#{user2.email} created"

car1 = Car.new(name: "Modèle 306", marque: "Peugeot", annee: 1990, tarif: 30)
car1.save!
p "#{car1.name} created"

car2 = Car.new(name: "Voiture de Sport", marque: "Ferrari", annee: 2010, tarif: 300)
car2.save!
p "#{car2.name} created"

Booking.create!(user_id: user1.id, car_id: car1.id, duree: 3)
p "booking created"

Booking.create!(user_id: user1.id, car_id: car1.id, duree: 1)
p "booking created"

Booking.create!(user_id: user1.id, car_id: car2.id, duree: 4)
p "booking created"

Booking.create!(user_id: user1.id, car_id: car2.id, duree: 1)
p "booking created"

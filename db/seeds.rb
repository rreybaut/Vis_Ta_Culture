# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Callback environment..."
#User.destroy_all

#User.create!(email: "karine.egler@gmail.com", password:"123456", first_name: "Karine", last_name: "Egler",buyer: false, seller: true)
#User.create!(email: "valerian.pallas@gmail.com", password:"123456", first_name: "Valeria", last_name: "Pallas",buyer: false, seller: true)
#User.create!(email: "	rreybaut@gmail.com", password:"123456", first_name: "Raphael", last_name: "Reybaut",buyer: false, seller: true)

Offer.destroy_all

Offer.create!(country: "Argentine", city: "Buenos Aires",price: "2500.0",lodging: true, meal: true, pet: false,smoker: false, excursion: true,child: true,user_id: 8)
Offer.create!(country: "Irlande",city: "Dublin", price: "900.0", lodging: true, meal: true, pet: false, smoker: false, excursion: true,child: true, user_id:9)
Offer.create!(country: "Maroc",city: "Casablanca", price: "1500.0", lodging: true, meal: true, pet: false, smoker: false, excursion: true, child: true, user_id:10)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Callback environment..."
Booking.destroy_all
Offer.destroy_all
User.destroy_all


user1 = User.create!(email: "karine.egler@gmail.com", password:"123456", first_name: "Karine", last_name: "Egler",buyer: false, seller: true)
user2 = User.create!(email: "valerian.pallas@gmail.com", password:"123456", first_name: "Valeria", last_name: "Pallas",buyer: false, seller: true)
user3 = User.create!(email: "	rreybaut@gmail.com", password:"123456", first_name: "Raphael", last_name: "Reybaut",buyer: false, seller: true)

file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669286708/tango_zebnpw.jpg")
offer = Offer.create!(country: "Argentine", city: "Buenos Aires",price: "2500.0",lodging: true, meal: true, pet: false,smoker: false, excursion: true,child: true,user_id: user1.id)
offer.photo.attach(io: file, filename: "tango_zebnpw.jpg", content_type: "image/jpg")
offer.save
file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669284784/Irelandtempled_yjqy1g.jpg")
offer = Offer.create!(country: "Irlande",city: "Dublin", price: "900.0", lodging: true, meal: true, pet: false, smoker: false, excursion: true,child: true, user_id: user2.id)
offer.photo.attach(io: file, filename: "Irelandtempled_yjqy1g.jpg", content_type: "image/jpg")
offer.save
file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669285012/tapismaroc_xl4xal.jpg")
offer = Offer.create!(country: "Maroc",city: "Casablanca", price: "1500.0", lodging: true, meal: true, pet: false, smoker: false, excursion: true, child: true, user_id: user3.id)
offer.photo.attach(io: file, filename: "tapismaroc_xl4xal.jpg", content_type: "image/jpg")
offer.save
file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669285295/parispicnic2_wmjndm.jpg")
offer = Offer.create!(country: "France", city: "Paris",price: "2500.0",lodging: true, meal: true, pet: false, smoker: true, excursion: true, child: false, user_id: user1.id)
offer.photo.attach(io: file, filename: "parispicnic2_wmjndm.jpg", content_type: "image/jpg")
offer.save
file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669285522/senegalfamille_rdgmjg.webp")
offer = Offer.create!(country: "Senegal",city: "Dakar", price: "3050.0", lodging: true, meal: true, pet: true, smoker: true, excursion: true, child: true, user_id: user2.id)
offer.photo.attach(io: file, filename: "senegalfamille_rdgmjg.jpg", content_type: "image/jpg")
offer.save
file = URI.open("https://res.cloudinary.com/ddmj8ng81/image/upload/v1669286353/nyquintaavenida_tntc1v.jpg")
offer = Offer.create!(country: "USA",city: "New York", price: "4500.0", lodging: true, meal: true, pet: false, smoker: false, excursion: true, child: false, user_id: user3.id)
offer.photo.attach(io: file, filename: "nyquintaavenida_tntc1v.jpg", content_type: "image/jpg")
offer.save

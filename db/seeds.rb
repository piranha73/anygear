# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'faker'

User.create(email:"lw@email.com", password: "123456", first_name:"Lily", last_name:"Walch", address:"Lech", phone_number:"+436648983164", birth_date: Date.new(2001, 1, 30), identity_number: "123456", issuance_country: "Austria")
User.create(email:"mc@email.com", password: "123456", first_name:"Michele", last_name:"Comolli", address:"Milan", phone_number:"+393204524549", birth_date: Date.new(1998, 2, 20), identity_number: "123456", issuance_country: "Italy")
User.create(email:"mt@email.com", password: "123456", first_name:"Michael", last_name:"Tung", address:"Venice", phone_number:"+393334443377", birth_date: Date.new(1993, 6, 22), identity_number: "123456", issuance_country: "Italy")
User.create(email:"kr@email.com", password: "123456", first_name:"Katrina", last_name:"Robles", address:"Bozen", phone_number:"+393516021240", birth_date: Date.new(1986, 8, 19), identity_number: "123456", issuance_country: "Italy")
User.create(email:"yc@email.com", password: "123456", first_name:"Yassine", last_name:"Chaqroun", address:"Casablanca", phone_number:"+34667733091", birth_date: Date.new(1998, 9, 23), identity_number: "123456", issuance_country: "Morocco")

puts "Creating 50 users"
50.times do
  User.create(
    email:Faker::Internet.unique.email,
    password: "123456", first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    address:Faker::Address.full_address,
    phone_number:Faker::PhoneNumber.cell_phone_in_e164,
    birth_date:Faker::Date.between(from: 99.years.ago, to: 16.years.ago),
    identity_number: "123456",
    issuance_country:Faker::Address.country
    )
end

TRIPODNAMES = [
   "Manfrotto", "Gitzo", "Really Right Stuff (RFS)", "Induro", "Feisol", "Oben", "Peak Design", "3 Legged Thing",
   "Sirui", "Vanguard", "Slik", "Zomei", "Neewer" , "Benro", "MeFoto", "Joby", "Dolica", "Bonfoto", "Magnus",
   "K&F"
 ]
LIGHTNAMES = [
  "Acuity Brands", "Aputure", "Bolt", "Godox", "BenQ", "Profoto", "Elinchrom", "Broncolor",
  "Dynalite", "Luxli", "Litepanels", "Lowel", "Light & Motion" , "Westcott", "Kino Flo", "MountDog", "Esmart", "StudioFX", "ESDDI"
]

CAMERA_LENSE_BRANDS = [
    "Canon", "Fujifilm", "Hasselblad", "Nikon", "Pentax", "Sony"
]

DRONE_BRANDS = [
  "DJI", "Yuneec", "UVify", "Hubsan", "Parrot", "Autel Robotics", "Air Hogs", "Walkera", "FreeFly",
  "High Great Drones," "Intel", "AEE", "Ryze"
]

MOUNT_TYPES = [
  "EF", "RF", "EF-S", "EF-M", "E", "EX", "A", "F", "S", "1", "Z", "Fuji G", "Fuji X", "Hasselblad X",
  "Hasselblad H", "K", "Q"
]

AUDIOBRANDS = [
  "Diety", "Rode", "Blue Yeti", "Audio-Technica", "Sennheiser", "Countryman", "Tascam"
]


puts "Creating tripod names..."
TRIPODNAMES.each do |tripod|
    TripodBrand.create(name: tripod)
    puts TripodBrand.last.name
end
puts "Finished Tripods!"

puts "..."

puts "Creating lighting brand names..."
LIGHTNAMES.each do |light|
    LightBrand.create(name: light)
    puts LightBrand.last.name
end
puts "Finished lighting brands!"

puts "..."

puts "Creating camera lense brands..."

CAMERA_LENSE_BRANDS.each do |brand|
  CameraLenseBrand.create(name: brand)
  puts CameraLenseBrand.last.name
end
puts "Total Count: #{CameraLenseBrand.count}"
puts "Finished All Camera Lense Brand!"

puts "..."

puts "Creating drone brands..."

DRONE_BRANDS.each do |brand|
  DroneBrand.create(name: brand)
  puts DroneBrand.last.name
end
puts "Total Count: #{DroneBrand.count}"
puts "Finished All Drone Brands!"

puts "..."

puts "Creating audio brand names..."
AUDIOBRANDS.each do |audio|
    AudioBrand.create(name: audio)
    puts AudioBrand.last.name
end
puts "Finished Audio Brands!"

puts "..."



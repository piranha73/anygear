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

BRANDS = {
  "Arri": {
    cameras: [],
    lenses: [],
    mount_types: ['PL']
  },
  "Canon": {
    cameras: [],
    lenses: [],
    mount_types: ["EF", "RF", "EF-S", "EF-M"]
  },
  "DJI": {
    cameras: [],
    lenses: [],
    stabilizers: [],
  },
  "Fujifilm": {
    cameras: [],
    lenses: [],
    mount_types: [ "Fuji G", "Fuji X" ]
  },
  "GoPro": {
    cameras: [],
    lenses: [],
  },
  "Hasselblad": {
    cameras: [],
    lenses: [],
    mount_types: ["Hasselblad X", "Hasselblad H"]
  },
  "Insta360": {
    cameras: [],
    lenses: [],
  },
  "Leica": {
    cameras: [],
    lenses: [],
    mount_types: ["L", "M", "R"]
  },
  "Nikon": {
    cameras: [],
    lenses: [],
    mount_types: ["F", "S", "1", "Z"]
  },
  "Olympus": {
    cameras: [],
    lenses: [],
    mount_types: ["Pen F", "OM", "Four Thirds", "Micro Four Thirds (MFT)"]
  },
  "Panasonic": {
    cameras: [],
    lenses: [],
    mount_types: [ "Micro Four Thirds (MFT)" ]
  },
  "Pentax": {
    cameras: [],
    lenses: [],
    mount_types: ["K", "Q"]
  },
  "Sony": {
    cameras: [],
    lenses: [],
    mount_types: ["E", "EX", "A"]
  },
  "Sigma": {
    cameras: [],
    lenses: [],
  },
  # start audio brands
  "Diety": {
    audios: []
  },
  "Rode": {
    audios: []
  },
  "Blue Yeti": {
    audios: []
  },
  "Audio Technica": {
    audios: []
  },
  "Sennheiser": {
    audios: []
  },
  "Countryman": {
    audios: []
  },
  "Tascam": {
    audios: []
  },
  # starts lighting brands
  "Acuity Brands": {
    lightings: []
  },
  "Aputure": {
    lightings: []
  },
  "Bolt": {
    lightings: []
  },
  "Godox": {
    lightings: []
  },
  "Profoto": {
    lightings: []
  },
  "Elinchrom": {
    lightings: []
  },
  "Broncolor": {
    lightings: []
  },
  "Dynalite": {
    lightings: []
  },
  "Luxli": {
    lightings: []
  },
  "Litepanels": {
    lightings: []
  },
  "Lowel": {
    lightings: []
  },
  "Light & Motion": {
    lightings: []
  },
  "Westcott": {
    lightings: []
  },
  "Kino Flo": {
    lightings: []
  },
  "Mountdog": {
    lightings: []
  },
  "Esmart": {
    lightings: []
  },
  "StudiFX": {
    lightings: []
  },
  "Esddi": {
    lightings: []
  },
  # starts tripod
  "Manfrotto": {
    tripods: []
  },
  "Gitzo": {
    tripods: []
  },
  "Really Right Stuff": {
    tripods: []
  },
  "Induro": {
    tripods: []
  },
  "Feisol": {
    tripods: []
  },
  "Oben": {
    tripods: []
  },
  "Peak Design": {
    tripods: []
  },
  "3 Legged Thing": {
    tripods: []
  },
  "Sirui": {
    tripods: []
  },
  "Vanguard": {
    tripods: []
  },
  "Slik": {
    tripods: []
  },
  "Zomei": {
    tripods: []
  },
  "Neewer": {
    tripods: []
  },
  "Benro": {
    tripods: []
  },
  "Mefoto": {
    tripods: []
  },
  "Joby": {
    tripods: []
  },
  "Dolica": {
    tripods: []
  },
  "Bonfoto": {
    tripods: []
  },
  "Magnus": {
    tripods: []
  },
  "K&F": {
    tripods: []
  },
  # starts stabilizers
  "Yuneec": {
    stabilizers: []
  },
 "UVify": {
    stabilizers: []
  },
  "Hubsan": {
    stabilizers: []
  },
  "Parrot": {
    stabilizers: []
  },
  "Autel Robotics": {
    stabilizers: []
  },
  "Air Hogs": {
    stabilizers: []
  },
  "Walkera": {
    stabilizers: []
  },
  "FreeFly": {
    stabilizers: []
  },
  "High Great Drones": {
    stabilizers: []
  },
  "Intel": {
    stabilizers: []
  },
  "AEE": {
    stabilizers: []
  },
  "Ryze": {
    stabilizers: []
  }
}

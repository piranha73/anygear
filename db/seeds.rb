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

STABILISERSNAMES = [
   "DJI", "Moza", "FeiyuTech", "Ivation", "Flycam", "Benro", "Pilotfly", "iKan",
   "Zhiyun", "Glidecam"
 ]

CAMERA_LENSE_BRANDS = [
    "Arri", "Canon", "Fujifilm", "Hasselblad", "Leica", "Nikon", "Olympus", "Panasonic", "Pentax", "Samyang", "Sony"
]

DRONE_BRANDS = [
  "DJI", "Yuneec", "UVify", "Hubsan", "Parrot", "Autel Robotics", "Air Hogs", "Walkera", "FreeFly",
  "High Great Drones," "Intel", "AEE", "Ryze"
]

AUDIOBRANDS = [
  "Diety", "Rode", "Blue Yeti", "Audio-Technica", "Sennheiser", "Countryman", "Tascam"
]

CANNON_MOUNT_TYPES = [ "EF", "RF", "EF-S", "EF-M" ]

SONY_MOUNT_TYPES = [ "E", "EX", "A"]

NIKON_MOUNT_TYPES = [ "F", "S", "1", "Z"]

FUJI_MOUNT_TYPES = [ "Fuji G", "Fuji X" ]

HASSELBLAD_MOUNT_TYPES = ["Hasselblad X", "Hasselblad H"]

PENTAX_MOUNT_TYPES = ["K", "Q"]

OLYMPUS_MOUNT_TYPES = [ "Pen F", "OM", "Four Thirds", "Micro Four Thirds (MFT)" ]

PANASONIC_MOUNT_TYPES = [ "Micro Four Thirds (MFT)" ]

LEICA_MOUNT_TYPES = ["L", "M", "R"]

ARRI_MOUNT_TYPES = ["PL"]


def create_model(model_name, constant_array, model_class)
  puts "Creating #{model_name} names..."
  constant_array.each do |element|
    model_class.create(name: element)
    puts model_class.last.name
  end
  puts "Finished #{model_name}s"

end
puts "Creating instances of all Models..."
puts create_model('tripod', TRIPODNAMES, TripodBrand)
puts create_model('stabilisers', STABILISERSNAMES, StabiliserBrand)
puts create_model('lighting', LIGHTNAMES, LightBrand)
puts create_model('camera lense', CAMERA_LENSE_BRANDS, CameraLenseBrand)
puts create_model('drone', DRONE_BRANDS, DroneBrand)
puts create_model('audio', AUDIOBRANDS, AudioBrand)


puts "Creating mount types for EACH brand..."

def convert_mount( name_of_brand, mounttypes_array )
    brand = CameraLenseBrand.where(name: name_of_brand).first
    mounttypes_array.each do |mounttype|
      MountType.create(camera_lense_brand_id: brand.id.to_i,
                       code: mounttype)
      puts MountType.last.code
    end
    puts "Finished #{name_of_brand} mount types"
end

convert_mount('Canon', CANNON_MOUNT_TYPES )
convert_mount('Sony', SONY_MOUNT_TYPES )
convert_mount('Nikon', NIKON_MOUNT_TYPES )
convert_mount('Fujifilm', FUJI_MOUNT_TYPES )
convert_mount('Hasselblad', HASSELBLAD_MOUNT_TYPES )
convert_mount('Pentax', PENTAX_MOUNT_TYPES )
convert_mount('Olympus', OLYMPUS_MOUNT_TYPES )
convert_mount('Panasonic', PANASONIC_MOUNT_TYPES )
convert_mount('Leica', LEICA_MOUNT_TYPES )
convert_mount('Arri', ARRI_MOUNT_TYPES )



puts "Finished ALL MOUNT TYPES for EACH CAMERA Brand"

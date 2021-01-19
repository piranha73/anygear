require 'date'
require 'faker'
require_relative 'brands_hash.rb'


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

#brand & mount_types seeds
BRANDS.each do |key, value|
  puts "creating #{key} brand ..."
  Brand.create(
    name: key,
    product_types: value[:product_types]
    )

  unless value[:mount_types].nil?
    puts "creating Mount Types for #{Brand.last.name}"
    value[:mount_types].each do |mount_type|
      MountType.create(
        brand:Brand.last,
        code: mount_type
        )
    end
  end
end

# product seeds
def create_product(productable, brand)
  Product.create(
    user: User.find(rand(5..(User.all.size))),
    productable: productable,
    name: Faker::Movies::StarWars.vehicle,
    description: Faker::TvShows::SiliconValley,
    price_per_day: Faker::Number.decimal(l_digits: 2),
    ship_from_address: Faker::Address.full_address,
    brand: brand
    )
end

SUPPORT_EQUIPMENT =  ["drones", "audios", "lightings", "stabilizers", "tripods"]
SUPPORT_EQUIPMENT.each do |table|
  puts "seeding #{table.classify} products"
  rand(5..10).times do
    productable = table.classify.constantize.create
    brand = Brand.all.select { |brand| brand.product_types.include?(table) }.sample
    create_product(productable, brand)
  end
end

CAMERA_TYPES = ["DSLR", "Mirrorless", "Point & Shoot", "Action Cameras"]

rand(5..10).times do
  puts "seeding cameras"
  camera_type = CAMERA_TYPES.sample
  brand = Brand.all.select { |brand| brand.product_types.include?('cameras') }.sample
  mount_type = MountType.where(brand: brand).sample
  # binding.pry
  productable = Camera.create(camera_type: camera_type, mount_type: mount_type)
  create_product(productable, brand)
end

LENS_TYPES = ["Zoom", "Fixed Prime"]

rand(5..10).times do
  puts "seeding cameras"
  lens_type = LENS_TYPES.sample
  brand = Brand.all.select { |brand| brand.product_types.include?('lenses') }.sample
  mount_type = MountType.where(brand: brand).sample
  min_focal_length = rand(12..70)
  max_focal_length = rand(min_focal_length..600)
  max_aperture = (2.8..12.3)
  productable = Lens.create(
    camera_type: camera_type,
    min_focal_length: min_focal_length,
    max_focal_length: max_focal_length,
    max_aperture: max_aperture
    )
  create_product(productable, brand)
end

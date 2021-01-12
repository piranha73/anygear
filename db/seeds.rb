# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  ---- KAT ----------
BRANDNAMES = [
  "Advert Tech", "AgfaPhoto", "Aigo", "Bell & Howell", "BenQ", "Blackmagic Design", "Canon", "Casio",
  "DJI", "Epson", "Foscam", "Fujifilm", "GE" , "Genius", "GoPro", "Hasselblad", "HP", "Kodak", "Leica",
  "Lytro", "Medion", "Memoto", "Minox", "Nikon", "Olympus", "Panasonic", "Pentax", "Phase One", "Polaroid",
  "Praktica", "Ricoh", "Rollei", "Samsung", "Sigma", "Sony", "Tevion", "Thomson", "Traveler", "Vageeswari",
  "VisionTek", "Vivitar"
]

puts "Creating brand names..."
BRANDNAMES.each do |brand|
    Brand.create(name: brand)
    puts Brand.last.name
end
puts "Finished Brand!"

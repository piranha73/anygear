class Product < ApplicationRecord
  belongs_to :user
  belongs_to :productable, polymorphic: true
  has_many :bookings
  has_one_attached_photo :cover_picture
  has_many_attached_photos :uploaded_pictures
end

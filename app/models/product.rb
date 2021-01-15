class Product < ApplicationRecord
  belongs_to :user
  belongs_to :productable, polymorphic: true
  belongs_to :brand
  has_one_attached :cover_picture
  has_many_attached :uploaded_pictures
end

class Brand < ApplicationRecord
  has_many :products
  has_many :mount_types
end

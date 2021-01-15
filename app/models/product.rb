class Product < ApplicationRecord
  belongs_to :user
  belongs_to :productable, polymorphic: true
end

class MountType < ApplicationRecord
  belongs_to :brand
  has_many :lenses
end

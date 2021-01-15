class MountType < ApplicationRecord
  belongs_to :camera_lense_brand
  has_many :cameras
  has_many :lenses
end

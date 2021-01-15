class Lense < ApplicationRecord
  include Productable
  belongs_to :camera_lense_brand
  belongs_to :mount_type
  belongs_to :lense_type
end
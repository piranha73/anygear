class Camera < ApplicationRecord
  include Productable
  belongs_to :camera_type
  belongs_to :camera_lense_brand
end

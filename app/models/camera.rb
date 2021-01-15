class Camera < ApplicationRecord
  belongs_to :camera_type
  belongs_to :camera_lense_brand
end

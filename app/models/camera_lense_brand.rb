class CameraLenseBrand < ApplicationRecord
  has_many :cameras
  has_many :lenses
  has_many :mount_types
end

class Camera < ApplicationRecord
  include Productable
  belongs_to :mount_type
end

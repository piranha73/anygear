class Audio < ApplicationRecord
  include Productable
  belongs_to :audio_brand
end

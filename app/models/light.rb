class Light < ApplicationRecord
  include Productable
  belongs_to :light_brand
end

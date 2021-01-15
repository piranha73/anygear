class Drone < ApplicationRecord
  include Productable
  belongs_to :drone_brand
end

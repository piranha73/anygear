class Stabiliser < ApplicationRecord
  include Productable
  belongs_to :stabiliser_brand
end

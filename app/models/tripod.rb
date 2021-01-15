class Tripod < ApplicationRecord
  include Productable
  belongs_to :tripod_brand
end

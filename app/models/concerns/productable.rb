module Productable
  extend ActiveSupport::Concern

  included do
    has_many :products, :as => :productable
  end
end

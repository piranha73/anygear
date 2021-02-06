class Brand < ApplicationRecord
  has_many :products
  has_many :mount_types

  def self.special_select(product_type, productable_type)
    brands = Brand.all.select { |brand| brand.product_types.include?(product_type) }
    brands.each do |brand|
      yield(brand, productable_type)
    end
    brands
  end
end

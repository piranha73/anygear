class ProductsController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @products = Product.all
    @drones = Product.where(productable_type: 'Drone')
    @audios = Product.where(productable_type: 'Audio')
    @lightings = Product.where(productable_type: 'Lighting')
    @stabilizers = Product.where(productable_type: 'Stabilizer')
    @tripods = Product.where(productable_type: 'Tripod')
    console
  end

end

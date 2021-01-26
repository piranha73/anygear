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

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:user_id, :name, :productable_type, :productable_id, :brand_id)
  end
end

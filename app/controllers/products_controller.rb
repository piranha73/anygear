class ProductsController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]

  def index
    console
    @products = Product.where(productable_type: params[:productable_type])
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:user_id, :name, :productable_type, :productable_id, :brand_id)
  end
end

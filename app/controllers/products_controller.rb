class ProductsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:index]

  def index
    console
    if params[:brand_id].present?
      @products = Product.where(productable_type: params[:productable_type], brand: params[:brand_id])
      # respond_to do |format|
      #   format.js { render template: 'products/update_products' }
      # end
    elsif params[:productable_type].present?
      @products = Product.where(productable_type: params[:productable_type])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:user_id, :name, :productable_type, :productable_id, :brand_id)
  end
end

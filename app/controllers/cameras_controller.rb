class CamerasController < ApplicationController
  def index
    @cameras = Product.where(productable_type: 'Camera')
    console
  end
end

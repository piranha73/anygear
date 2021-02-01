class BookingsController < ApplicationController
  def new
    @product = Product.find(params[:params_id])
    @booking = Booking.new

    @bookings_array = []
    @product.bookings.each do |booking|
      @bookings_array << [booking.start_date, booking.end_date]
    end
    @final_array = nil
    @bookings_array.each do |array_booking|
      @final_array = (array_booking.first.to_date..array_booking.last.to_date).map{|date| date.strftime("%Y-%m-%d")}
    end

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product_id = params["product_id"]
    @booking.total_price = (@booking.end_date - @booking.start_date) * @booking.product.price_per_day.to_i / 86400
    @product = Product.find(params[:product_id])
    if @product.bookable?(@booking.start_date,@booking.end_date)
      if @booking.save
       redirect_to product_booking_path(@booking.product_id, @booking)
      else
        redirect_to new_product_booking_path(@product)
      end
    else
      redirect_to new_product_booking_path(@product)
      flash[:notice] = "Product not available in days selected"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :ship_to_address, :total_price)
  end

end

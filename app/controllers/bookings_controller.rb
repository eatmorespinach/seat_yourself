class BookingsController < ApplicationController
	before_action :load_restaurant

  def new
  	@booking = Booking.new
  end

  def create
  	@booking = @restaurant.bookings.build(booking_params)

    if @review.save
      redirect_to restuarant_path, notice: 'BOOKED!!'
    else
      render :new
    end
  end

  private

  def booking_params
  	params.require(:booking).permit!
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end

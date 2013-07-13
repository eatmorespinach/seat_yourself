class BookingsController < ApplicationController
	before_action :load_restaurant

  def new
  	@booking = Booking.new
  end

  def create
  	@booking = @restaurant.bookings.build(booking_params)
  
  end

  private

  def booking_params
  	params.require(:booking).permit!
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end

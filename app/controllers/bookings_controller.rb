class BookingsController < ApplicationController
	before_action :load_restaurant
  before_filter :load_user

  def new
  	@booking = Booking.new
  end

  def create
  	@booking = @restaurant.bookings.build(booking_params)

    if @booking.save
      redirect_to restaurant_path(@restaurant.id), notice: 'Booked!'
      BookingMailer.booked_email(@user).deliver
      
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

  def show
    
  end

  def load_user
    @user = current_user
  end
end

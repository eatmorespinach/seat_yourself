class RestaurantsController < ApplicationController
before_filter :load_user

  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])

  	# if @user.restaurant_id == @restaurant.id
  	# 	@bookings = Booking.find_by_restaurant_id(@restaurant.id)
  	# end

  end

  private

  def restaurant_params
  	params.require(:restaurant).permit!
  end

  def load_user
  	@user = current_user
  end


end

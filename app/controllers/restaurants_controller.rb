class RestaurantsController < ApplicationController
	before_filter :load_user

  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])

# @user is nil if no user logged in.
	# binding.pry
   	if @user && @user.restaurant_id == @restaurant.id #
    	@bookings = Restaurant.find(@restaurant.id).bookings
      if @bookedUsers = Restaurant.find(@restaurant.id).users
      
        @bookedUsers = Restaurant.find(@restaurant.id).users
  
     end
    end

  end

  private

  def restaurant_params
  	params.require(:restaurant).permit!
  end

  def load_user
  	#current_user is not passed in
  	# if current_user.nil?
  	# 	@user = 0
  	# else
  		@user = current_user
  	# end
  end


end

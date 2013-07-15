class RestaurantsController < ApplicationController
before_filter :load_user

  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])


  end

  private

  def restaurant_params
  	params.require(:restaurant).permit!
  end

  def load_user
  	@user = current_user
  end


end

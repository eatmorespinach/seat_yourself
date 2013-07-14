SeatYourself::Application.routes.draw do

	root 'restaurants#index'

  resources :users, :only => [:new, :create, :show]
  resources	:sessions, :only => [:new, :create, :destroy]

  resources :restaurants do 
  	resources :bookings, :except => [:index]
  end
end


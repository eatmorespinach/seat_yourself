SeatYourself::Application.routes.draw do
  get "bookings/new"
  get "bookings/create"
  root 'restaurants#index'

  resources :users
  resources	:sessions
  resources :restaurants do 
  	resources :bookings
  end
end


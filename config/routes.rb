SeatYourself::Application.routes.draw do
  resources :users
  resources	:sessions

  resources :restaurants do 
  	resources :bookings
  end
end


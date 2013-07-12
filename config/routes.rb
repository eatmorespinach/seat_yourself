SeatYourself::Application.routes.draw do
  get "sessions/new"

  root 'restaurants#index'
  resources :restaurants
  resources :users
end

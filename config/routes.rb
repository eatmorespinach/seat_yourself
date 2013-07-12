SeatYourself::Application.routes.draw do
  get "users/new"
  root 'restaurants#index'
  resources :restaurants
  resources :user
end

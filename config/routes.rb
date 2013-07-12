SeatYourself::Application.routes.draw do
  get "sessions/new"
  get "users/new"
  root 'restaurants#index'
  resources :restaurants
  resources :user
end

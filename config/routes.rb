Rails.application.routes.draw do
  root "puppies#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  get "my_puppy_dashboard" => "dashboard#index"
  post "my_puppy_dashboard/:puppy_id" => "adopted#create", as: :adopted_puppy

  resources :playdates

end

Rails.application.routes.draw do
  root "puppies#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  resources :dashboard
  resources :playdates
end

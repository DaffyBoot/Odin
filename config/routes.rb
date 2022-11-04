Rails.application.routes.draw do
  resources :users
  resources :homes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  resource :session , only: [:new, :create, :destroy]

  get "register" => "users#new", :as => "register"
  get "log_out" => "sessions#destroy", :as => "logout"
  get "log_in" => "sessions#new", :as => "login"
  get "admindashboard" => "admin_dashboard#index"
end

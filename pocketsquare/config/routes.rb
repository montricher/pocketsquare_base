Rails.application.routes.draw do
  # root route
  # root to: "home#index"

  root :to => "home#index"

  # users routes

  get "/users" => "users#index"

  get "/users/new" => "users#new"

  post "/users" => "users#create"

  get "/user/login" => "users#login"

  post "/user/login" => "users#process_login"



  # venues routes "controller#action"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  # resources implementation
  resources :users
  resources :sessions

  resources :venues do
    collection do
      get "search"
    end
  end
  #get "venues/search" => "venues#search"

end

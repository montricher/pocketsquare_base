Rails.application.routes.draw do
  # root route
  # root to: "home#index"

  root :to => "home#index"

  # users...

  get "/users" => "users#index"

  get "/users/new" => "users#new"

  post "/users" => "users#create"

  get "/user/login" => "users#login"

  post "/user/login" => "users#process_login"

  # venues...

  get "/venues" => "venues#index"

end

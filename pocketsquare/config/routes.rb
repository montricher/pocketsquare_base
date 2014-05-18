Rails.application.routes.draw do
  # root route
  # root to: "home#index"

  root :to => "home#index"

  # users...

  # get ALL users
  get "/users" => "users#index"

  get "/users/:id" => "users#create"

  # show NEW user form
  get "/user/new" => "users#create"

  # process user CREATE action from form
  post "/users" => "users#create"

  # show LOGIN form
  get "/user/login" => "users#login"

  # process login form
  post "/user/login" => "users#process_login"

end

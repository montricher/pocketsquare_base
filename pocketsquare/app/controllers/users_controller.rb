class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create

    user_hash = params[:user]
    if user_hash[:password] == user_hash[:password_confirm]
      user = User.new
      user.user_name = user_hash[:name]
      user.user_birthdate = user_hash[:birthdate]
      user.user_email = user_hash[:email]
      user.user_zip = user_hash[:zip]
      user.password = user_hash[:password]
      user.save

        if user.valid?
        # login user after registration
          @current_user = user
          redirect_to "/users/login"
        else
        render text: "Email is already in use"
        end

    else
      render text: "Passwords did not match. Please try again"
    end
  end

  def login
  end

  def process_login
  # process login form
      email = params[:user_email]
      password = params[:password]

      @current_user = User.authenticated?(user_email, password)

      if @current_user
        redirect_to venues_path
      else
        render text: "Authentication failed. Incorrect email or password."
      end

  end

end

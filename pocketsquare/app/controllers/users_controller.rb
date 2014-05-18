class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    user_hash = params[:user_name]
    # if user_hash[:password] == user_hash[:password_confirm]
      user = User.new
      user.user_name = user_hash[:name]
      user.user_birthdate = user_hash[:birthdate]
      user.user_email = user_hash[:email]
      user.user_zip = user_hash[:zip]
      user.password = user_hash[:password]

      user.save

      if user.valid?
      # auto log-in when registered
        @current_user = user
        redirect_to "/users"
      else
      render text: "Email is already in use"
      end
    else
    render text: "Password/password confirmation did not match"
    # end

  end
end

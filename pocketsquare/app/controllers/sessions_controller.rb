class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_email: params.fetch(:user_email))
    success = user.authenticate(params[:password])
    # success is ActiveRecord
    if success
      session[:user_id] = user.id
      redirect_to root_url, :notice => "You are now logged in!"
    else
      # display error message & renew
      flash.now.alert = "Error: Invalid email or password"
      render "new"
    end
  end

  # only way to log out current user
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end

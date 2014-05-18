class AuthenticationController < ApplicationController
  def sign_in
    @user = User.new
  end

  def login
    email = params[:user][:user_email]
    password = params[:user][:password]

    if email.rindex('@')
      user_email=username_or_email
      user = User.authenticate_by_email(email, password)
    else
      redirect_to :root
    end

    if user
      flash[:notice] = 'Welcome.'
      redirect_to :root
    else
      flash.now[:error] = 'Login error. Please check your username and password.'
      render :action => "sign_in"
    end

  end

  def signed_out
    session[:user_id] = nil
    flash[:notice] = "You have been signed out."
  end

end

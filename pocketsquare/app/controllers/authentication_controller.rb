class AuthenticationController < ApplicationController
  def sign_in
    @user = User.new
  end

  def login
    email = params[:user][:email]
    password = params[:user][:password]

    if email.rindex('@')
      email=username_or_email
      user = User.authenticate_by_email(email, password)
    else
      redirect_to :root
    end

    if user
      redirect_to :root
    else
      render :action => "sign_in"
    end

  end
end

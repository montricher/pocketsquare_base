class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new (user_attributes)
    if @user.save
      redirect_to root_url, :notice => "You have been signed up!"
    else
      render "new"
    end

  end

  private

  def user_attributes
    params.require(:user).permit(:user_name, :user_email, :password, :password_confirmation)
  end
end

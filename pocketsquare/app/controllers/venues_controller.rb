class VenuesController < ApplicationController
  before_action :authenticate_with_basic_auth

  def index
    @names = Venue.explore
    @user = current_user
  end

end

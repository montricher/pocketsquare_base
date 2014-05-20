class VenuesController < ApplicationController

  before_action :authenticate_with_basic_auth

  def index
    @venues = Venue.all

  end

  def show

    @spot = Spot.find(params[:id])

  end
end

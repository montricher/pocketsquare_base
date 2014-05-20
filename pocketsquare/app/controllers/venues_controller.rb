class VenuesController < ApplicationController

  include FoursquareHelper

  before_action :require_login

  def index
    # @venues = Venue.all
    puts "Index method test print"

  end

  def search
    @search_results = Foursquare.explore_near(params[:keyword], {zip_code: params[:zip_code], radius: 1000})
    # @search_results = Foursquare.explore_near(params[:keyword], {latitude: 40.739848, longitude: -73.989567})

    @search_results = @search_results.map do |venue|
      {name: venue["venue"]["name"], rating: venue["venue"]["rating"]}
    end

    @search_results = @search_results.uniq.sort {|x,y| y[:rating] <=> x[:rating]}.slice(0..9)
    render :index
  end

  # display specific venue based on an ID search
  def show
    @Venue = Venue.find(params[:id])
  end
end

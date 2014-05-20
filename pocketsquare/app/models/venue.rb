class Venue < ActiveRecord::Base
  # "Venues" connected to "Users" through join table "Favorites"
  has_many :users, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

  include FoursquareHelper

  # explores for food near GA West and returns a list of the names of the food venues
  def self.explore
    venues = Foursquare.explore_near("food", {latitude: 40.739848, longitude: -73.989567})

    venues.map do |venue|
      venue["venue"]["name"]
    end
  end

end

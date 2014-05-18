class Venue < ActiveRecord::Base
  # "Venues" connected to "Users" through join table "Favorites"
  has_many :users, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

  # checking if pages loads
  def self.explore

    url =  "https://api.foursquare.com/v2/venues/explore?ll=40.739848,-73.989567&client_id=#{ENV["FOURSQUARE_CLIENT_ID"]}&client_secret=#{ENV["FOURSQUARE_CLIENT_SECRET"]}&v=20140517&query=food"

    jsonresponse = JSON.parse(HTTParty.get(url).body)

    venues = jsonresponse["response"]["groups"][0]["items"]

    @names = []
    venues.each do |venue|
      @names << venue["venue"]["name"]
    end
    @names
  end
end

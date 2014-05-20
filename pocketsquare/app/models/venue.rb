class Venue < ActiveRecord::Base
  # "Venues" connected to "Users" through join table "Favorites"
  has_many :users, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

  # checking for API results
  def self.explore
    # this url is currently using coordinates of Broadway & E 21st St and searching for food
    url =  "https://api.foursquare.com/v2/venues/explore?ll=40.739848,-73.989567&client_id=#{ENV["FOURSQUARE_CLIENT_ID"]}&client_secret=#{ENV["FOURSQUARE_CLIENT_SECRET"]}&v=20140517&query=food"
    # parsing with gems
    jsonresponse = JSON.parse(HTTParty.get(url).body)

    venues = jsonresponse["response"]["groups"][0]["items"]

    @venues_arr = []

    venues.each do |venue|
      @venues_arr << venue["venue"]["name"]
    end

    @venues_arr
  end
  return venues_arr
end

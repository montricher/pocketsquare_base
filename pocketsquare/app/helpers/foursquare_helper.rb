module FoursquareHelper
  class Foursquare
    @@url_base      = "https://api.foursquare.com/v2/venues/"
    @@client_id     = Rails.application.secrets.foursquare_client_id
    @@client_secret = Rails.application.secrets.foursquare_client_secret

    def self.build_url_for_ll(action, query, latitude, longitude)
      "#{@@url_base}#{action}?ll=#{latitude},#{longitude}&client_id=#{@@client_id}&client_secret=#{@@client_secret}&v=20140517&query=#{query}"
    end

    def self.build_url_for_zip(action, query, zip_code, radius)
      "#{@@url_base}#{action}?near=#{zip_code}&radius=#{radius}&client_id=#{@@client_id}&client_secret=#{@@client_secret}&v=20140517&query=#{query}"
    end

    def self.call_api_for(action, query, location)
      if location[:zip_code].nil? # TODO clean this up a little, it's too implementation-dependent
        JSON.parse(HTTParty.get(Foursquare.build_url_for_ll(action, query, location[:latitude], location[:longitude])).body)
      else
        JSON.parse(HTTParty.get(Foursquare.build_url_for_zip(action, query, location[:zip_code], location[:radius])).body)
      end
    end

    def self.explore_near(query, location)
      Foursquare.call_api_for("explore", query, location)["response"]["groups"][0]["items"]
    end
  end
end

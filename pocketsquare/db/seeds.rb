# User.delete_all
# Venue.delete_all

# @array = Venue.explore

# @array.each do |venue|

# Venue.create({
#     venue_name: venue["venue"]["name"],
#     venue_address: venue["venue"]["location"]["address"],
#     venue_zip: venue["venue"]["categories"][0]["zip"],
#     venue_twitter: venue["venue"]["twitter"]
#     })

# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Venue < ActiveRecord::Base
  # "Venues" connected to "Users" through join table "Favorites"
  has_many :users, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

end

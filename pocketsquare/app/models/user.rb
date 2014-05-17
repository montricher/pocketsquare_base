class User < ActiveRecord::Base
  # "Users" connected to "Venues" through join table "Favorites"
  has_many :venues, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

end

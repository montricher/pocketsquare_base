class User < ActiveRecord::Base
  # include BCrypt
  has_secure_password

  # "Users" connected to "Venues" through join table "Favorites"
  has_many :venues, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

  # consistency on all email fields
  before_validation :downcase_email

  # validation presence and confirmation
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :user_email

  # no duplicates on db
  validates :user_email, uniqueness: true

  def downcase_email
    self.user_email = user_email.downcase
  end

end


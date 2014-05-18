class User < ActiveRecord::Base
  include BCrypt
  # "Users" connected to "Venues" through join table "Favorites"
  has_many :venues, through: :favorites
  # Allows to call method .favorites on any user
  has_many :favorites

  before_validation :downcase_email

  validates :user_email, uniqueness: true

  def password = password_input
    # passes the password_input through BCrypt::Password and hashes it
    new_password_hash = Password.create(password_input)
    # new password hash written to database
    self.hashed_password = new_password_hash
    self.hashed_password
  end

  # the getter
  def password
    Password.new(self.hashed_password)
  end

  # checking password...
  def check_password(password_input)
    # does password entered matches the db?
    password_input == self.password
  end

  def self.authenticated?(user_email_input, password_input)
    user = User.find_by_email(user_email_input)
      if user && user.password == password_input
        puts "Authenticated"
        return user
      else
        puts "Could not authenticate"
        return nil
      end
    puts "Did not find email!"
    return nil
  end
  def downcase_email
    self.email = email.downcase
  end
end

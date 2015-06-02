require 'bcrypt'
require 'dm-validations'

class User
  include DataMapper::Resource

  attr_reader :password
  attr_accessor :password_confirmation

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :team, String
  property :password_digest, Text

  validates :email, uniqueness: true
  validates :password, confirmation: true,
             message: 'Sorry, your passwords do not match'

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate(email, password)
    user = first(email: email)
    if user && BCrypt::Password.new(user.password_digest) == password
      user
    end
  end
end

require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_one :person
 
  validates :username, format: {
    with: %r{\A\w+@\w+\.[a-z]{2,4}(\.[a-z]{2,4})?\z}i,
    message: "bad e-mail format."
  }

  validates :password, length: {in: 6..30}
  
  before_create :shenanigans

  private

  def shenanigans
    self.is_authenticated = false
    self.salt = SecureRandom.base64
    self.confirmation_code = SecureRandom.urlsafe_base64
    self. password = BCrypt::Password.create(self.password + self.salt)
  end

end

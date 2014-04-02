require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_one :person, dependent: :destroy
  has_many :vehicles  
  validates :username, uniqueness: true, length: {maximum: 70}, format: {
    with: %r{\A\w+@\w+\.[a-z]{2,4}(\.[a-z]{2,4})?\z}i,
    message: "bad e-mail format."
  }, confirmation: true

  validates :username_confirmation, presence: true

  validates :password, length: {in: 6..30}, confirmation: true
  validates :password_confirmation, presence: true

  before_create :shenanigans
  

  def confirm_email
     self.is_authenticated = true
  end 


  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password == Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end
        
  private

  def shenanigans
  #self.is_authenticated = false
   self.salt = Engine.generate_salt 
   self.confirmation_code = SecureRandom.urlsafe_base64
   self.password = Engine.hash_secret(self.password, self.salt)
  end

end

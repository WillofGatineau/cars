class Person < ActiveRecord::Base
  belongs_to :user
  before_create :fix_telephone_number
  validates :first_name, length: {in: 2..25}, format: {
    with: %r{\A[a-z]+\z}i,
    message: "can only include alphabetical letters."
  }

  validates :last_name, length: {in: 2..25}, format: {
    with: %r{\A[a-z]+\z}i,
    message: "can only include alphabetical letters."
  }

  validates :address, format: {
    with: %r{\A[0-9]{1,5}\s([a-z]|\s[a-z])+\z}i,
    message: "format is wrong."
  }
  #in the best of both world, validation of the city would be based on a location database sorting every cities possible by province
  validates :city, length: {in: 2..30}

  validates :province, format: {
    with: %r{\A(QC|ON|MB|SK|AB|BC|YT|NT|NU|NL|PE|NB|NS)\z},
    message: "invalid format"
  }

  validates :postal_code, format: {
    with: %r{\A[a-z][0-9][a-z]\s?[0-9][a-z][0-9]\z}i,
    message: "is not a valid postal code."
  }  

  validates :telephone, format: {
    with: %r{\A(\([0-9]{3}\)|[0-9]{3})[0-9]{3}-?[0-9]{4}\z},
    message: "invalid telephone number."
   }
  
  
   def user_id
    self.user_id = session[:current_user_id]
   end 
   
   private

   #because we accept many ways the telephone number can be inputed, we may have to fix that. 
   def fix_telephone_number
     if !self.telephone.include? "("
       self.telephone = "(" + self.telephone[0, 3] + ")" + self.telephone[3, self.telephone.bytesize]
     end
     if !self.telephone.include? "-"
       self.telephone = self.telephone[0,8] + "-" + self.telephone[8, self.telephone.bytesize]
     end      
   end  
end

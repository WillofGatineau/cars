class Vehicle < ActiveRecord::Base
belongs_to :user
validates :license_plate, length: {in:4..12}

#for the color, would be all kind of different color possible with the form having a dropdown menu for it.Just like province in the Person model.

#the idea here is to check if the make is available in the branddatabase, but we won't be using this for now.
validates :make, presence: true

#the model is the same deal, we need to check if it's available in the database.

validates :year, allow_blank: true, format: {
    %r{\A[0-9]{4}\z},
    message: "year format is wrong."
}  

end

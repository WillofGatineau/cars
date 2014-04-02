# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Seed to add some car brands into the databse. Without some, users wouldn't be able to add a vehicle to their name

Brand.delete_all
Person.delete_all

Person.create(first_name: "john", last_name: "smith", city: "gatineau", address: "305 despaysans", province: "QC", postal_code: "j9j 2d2", telephone: "8196841213")

Brand.create(make: "Ford", model: "Fiesta")
Brand.create(make: "Ford", model: "Escort")
Brand.create(make: "Ford", model: "Pinto")
Brand.create(make: "Ford", model: "Fairmont")
Brand.create(make: "Ford", model: "Tempo")
Brand.create(make: "Ford", model: "Contour")
Brand.create(make: "Ford", model: "Fusion")
Brand.create(make: "Ford", model: "Mustang")
Brand.create(make: "Ford", model: "Thunderbird")
Brand.create(make: "Ford", model: "Focus")
Brand.create(make: "Ford", model: "Taurus")
Brand.create(make: "Ford", model: "Crown Victoria")
Brand.create(make: "Ford", model: "EXP")

Brand.create(make: "Honda", model: "Accord")
Brand.create(make: "Honda", model: "Accord Coupe")
Brand.create(make: "Honda", model: "Accord Hybrid")
Brand.create(make: "Honda", model: "Civic")
Brand.create(make: "Honda", model: "Civic Coupe")
Brand.create(make: "Honda", model: "Civic Hybrid")
Brand.create(make: "Honda", model: "Fit")
Brand.create(make: "Honda", model: "Inspire")
Brand.create(make: "Honda", model: "Jade")
Brand.create(make: "Honda", model: "Jazz")
Brand.create(make: "Honda", model: "Odyssey")
Brand.create(make: "Honda", model: "Vamos")

Brand.create(make: "BMW", model: "316i")
Brand.create(make: "BMW", model: "318i")
Brand.create(make: "BMW", model: "335i")
Brand.create(make: "BMW", model: "220i")
Brand.create(make: "BMW", model: "228i")
Brand.create(make: "BMW", model: "530i")
Brand.create(make: "BMW", model: "535i")





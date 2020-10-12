require 'uri'

Category.destroy_all
User.destroy_all


# Users
alan = User.create!(username: "alan", email: "alan@gmail.com", password: "123456", city: "vigo")
marcos = User.create!(username: "marcos", email: "marcos@gmail.com", password: "123456", city: "jaen")
carlos = User.create!(username: "carlos", email: "carlos@gmail.com", password: "123456", city: "alzira")
cristian = User.create!(username: "cristian", email: "cristian@gmail.com", password: "123456", city: "albacete")


# Categories
art_director = Category.create!(name: "Art Director")
ac = Category.create!(name: "Camera Assistant")
dop = Category.create!(name: "Director of Photography")
gaffer = Category.create!(name: "Gaffer")
location_scout = Category.create!(name: "Location Scout")
costume_designer = Category.create!(name: "Costume Designer")
makeup_artist = Category.create!(name: "Makeup Artist")
director = Category.create!(name: "Director")
producer = Category.create!(name: "Producer")
ad = Category.create!(name: "Assistant Director")
script = Category.create!(name: "Script Supervisor")
sound = Category.create!(name: "Boom Operator")
stunt = Category.create!(name: "Stunt Coordinator")







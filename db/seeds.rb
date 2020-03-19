# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

alan = User.create!(username: "alan", email: "alan@gmail.com", password: "123456", city: "vigo")
marcos = User.create!(username: "marcos", email: "marcos@gmail.com", password: "123456", city: "jaen")
carlos = User.create!(username: "carlos", email: "carlos@gmail.com", password: "123456", city: "alzira")
cristian = User.create!(username: "cristian", email: "cristian@gmail.com", password: "123456", city: "albacete")

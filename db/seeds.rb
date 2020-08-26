# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts"destroy resort"
Resort.destroy_all

puts "create resorts"

  #user_one = User.new(
     # first_name: "Aurelien",
    #  last_name: "Max",
     # email: "aurelien@lewagon.org",
     # password: '123456')
  #user_one.save

  # file = URI.open('https://www.tignes.net/uploads/media/page/0001/60/a95bc639ea1436153d77584753c7982b4cd22a49.jpeg')
  tignes = Resort.create!(
    resort_name: "Tignes",
    resort_address: "Route du Rosset, 73320 Tignes, france",
    resort_description: "Pistes variées, plein de lieux d'activités, 3 villages au choix pour ton budget, Tignes t'offrira le plaisir de profiter de cette station été comme hiver",
    visitor_name: "#",
    roommate: "entre potes",
    budget: "Modéré, la passion et la raison",
  )


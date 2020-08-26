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

  file = URI.open('https://www.tignes.net/uploads/media/page/0001/60/a95bc639ea1436153d77584753c7982b4cd22a49.jpeg')
  tignes = Resort.new(
    resort_name: "Tignes",
    resort_address: "73320, Alpes du nord",
    resort_description: "Pistes variées, plein de lieux d'activités, 3 villages au choix pour ton budget, Tignes t'offrira le plaisir de profiter de cette station été comme hiver",
    visitor_name: "#",
    roommate: "entre potes", "en couple",
    budget: "Modéré, la passion et la raison",
    day_activities: "Ski, ski, ski !", "Balades en raquettes", "Luge", "Activités insolites",
    biological_clock: "Lève tôt pour en profiter au maximum", "Soirées après-ski",
    accommodation: "Appart, avec un coin cuisine", "Hôtel de luxe",
    spot: "En bas de la piste, pas de perte de temps !", "Près des bars et de la boite de nuit",
    night_activities: "La tournée des bars", "Un ciné",
    expectations: "Beaucoup de pistes de ski", "Une station enneigée", "Un lieu vivant la nuit", "Une forêt pour se balader",
    geocation: "Oui", "Non"
    kilometers: "Je suis prêt à me déplacer pour ma station idéale", "Au maximum 500kms", "Au plus près de chez moi",

    #user: user_one)
  tignes.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  tignes.save

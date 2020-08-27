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
    resort_address: "Route du Rosset, 73320 Tignes, France",
    resort_description: "Pistes variées, plein de lieux d'activités, 3 villages au choix pour ton budget, Tignes t'offrira le plaisir de profiter de cette station été comme hiver. Au sein de
    l'espace Killy, ton forfait te permettra d'aller aussi bien sur les pistes de Tignes que celles de Val d'Isère, t'offrant un vaste choix de niveau sur les pistes, mais aussi le plaisir de
    pouvoir te poser prendre un verere à la Folie-Douce. Le soir, fais toi une petite tournée des bars ou un ciné si tu es trop claqué.",
    visitor_name: "#",
    roommate: "entre potes",
    budget: "Modéré, la passion et la raison",
    photo_asset: "Tignes.jpg",
    )
file = URI.open("https://img2.onthesnow.com/image/xl/97/tignes_resort_france_97081.jpg")
tignes.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdm0lfbn.cloudimg.io/v7/_origin_/image_uploader/photos/86/original/tignes-le-lavachet-tignes-le-lac--lavachet.jpg?p=large")
tignes.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.tignespro.net/upload/dossiers/photos/614_snow-driving-fabre-tignes_001_redimensionner.jpg")
tignes.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

vars = Resort.create!(
    resort_name: "Vars",
    resort_address: "Sainte-Maire, 05560 Vars, France",
    resort_description: "Une station faite pour toi et tes proches! Vars alterne entre ski plaisir et plaisir de l'après ski tout l'année. L'été, viens apprécier la verdure des alpages, les montagnes
    fleuries et te balader sac sur le dos aux côtés des animaux sauvages. L'hiver garde en tête de profiter du plaisir du froid et de la neige, laisse tes enfants découvrir le ski grâce aux écoles
    faites pour ça pendant que tu pourras te prélasser sur les pistes.",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modéré, la passion et la raison",
    photo_asset: "vars.jpg",
  )
file = URI.open("https://cdn-s-www.ledauphine.com/images/6942EE97-310C-4E8E-9422-CE553014C090/NW_detail/title-1549198713.jpg")
vars.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdn-s-www.ledauphine.com/images/4DE560F9-723B-4B0B-8397-5D8F3AAF13ED/NW_detail/reconnu-pour-son-interet-ecologique-paysager-et-culturel-le-val-d-escreins-vient-de-reintegrer-officiellement-le-parc-naturel-regional-du-queyras-par-decret-ministeriel-photo-le-dl-1558707346.jpg")
vars.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://skipass.fr/p/resorts/774/header-vars-de20c-1.jpg")
vars.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

  courchevel = Resort.create!(
    resort_name: "Courchevel",
    resort_address: "Mairie 228 rue de la mairie Saint-Bon chef-Lieu, 73120, France",
    resort_description: "C'est LA station qui répondra à toutes tes exigences. Tu auras de la bonne neige sous les skis et des paillettes plein les yeux pour le reste! Tu veux changer d'ambiance et tenter
    une meilleure aventure? Pas de problème, l'insolite fait partie des possibilités offertes par Courchevel! Et si tu aimes garder les pieds sur terre, alterne toute l'année entre les bons restos et les
    moments shopping dans les magasins de luxe qui t'ouvriront en grand leurs portes.",
    visitor_name: "#",
    roommate: "en couple",
    budget: "Illimité, c'est les vacances",
    photo_asset: "courchevel.jpg",
  )


  combloux = Resort.create!(
    resort_name: "Combloux",
    resort_address: "132 Route de la Mairie, 74920 Combloux, France",
    resort_description: "Station sans prétention mais qui répond aux besoins du plus grand nombre: de la neige mais aussi plein d'activités sur et en dehors du ski. Combloux saura t'offrir également ce qu'elle
    a de mieux: un cadre familiale idéal, des pistes suffisantes en nombre sans s'ennuyer, des cours de ski pour tous les âges afin de skier entre parents et enfants. Mais aussi des sorties en forêt à la
    recherche des animaux et notamment de l'effrayant dahu qui rôde dans le coin!",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modeste, je veux faire des économies",
    photo_asset: "combloux.jpg",
  )


  avoriaz = Resort.create!(
    resort_name: "Avoriaz",
    resort_address: "1 Place de l'Église, 74110 Morzine, France",
    resort_description: "Un domaine sympa et enneigé, qui t'offrira de belles possibilités de ski l'hiver avec tes potes. Pense bien à avoir un bon niveau car le domaine est sympa pour dévaler les pistes en ski
    ou en snow. Si tu viens à Avoriaz à une autre période de l'année, pas de problème, tu auras la possiblité de t'amuser parmi toutes les activités offertes au sein de la station, du matin au soir, surtout le soir.",
    visitor_name: "#",
    roommate: "entre potes",
    budget: "Illimité, c'est les vacances",
    photo_asset: "avoriaz.jpg",
  )


  isola = Resort.create!(
    resort_name: "Isola 2000",
    resort_address: "Résidence Lombarde 06420 ISOLA 2000, France",
    resort_description: "Idéal en famille pour profiter du ski comme d'un bel ensoleillement, Isola 2000 saura te ravir tout au long de l'année. Avec son versant sud, l'hiver découvre les pistes et prends un bain de
    soleil accompagné d'un bon vin chaud en terrasse. L'été, profite-en pour faire des randonnées et pousser ensuite jusqu'à Nice t'amuser sur la French Riviera toute la nuit avec tes potes. Et si tu es en forme, pourquoi
    pas retenter l'évasion vers Isola 2000 !",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modéré, la passion et la raison",
    photo_asset: "isola.jpg",
  )


  bolquere = Resort.create!(
    resort_name: "Bolquère",
    resort_address: "2 Grand'Rue, 66210 Bolquère, France",
    resort_description: "De quoi skier, de quoi t'amuser à moindre frais, cette station est faite pour toi ! L'hiver, la neige est au rendez-vous pour te permettre de
    chausser les skis ou le snow. L'été, coupe ton téléphone pour apprécier de bonnes balades dans la montagne sans souffrir de la chaleur. La station est un cadre de
    vie agréable où il y fait bon vivre sans se ruiner.",
    visitor_name: "#",
    roommate: "entre potes",
    budget: "Modeste, je veux faire des économies",
    photo_asset: "bolquere.jpg",
  )


  puyvalador = Resort.create!(
    resort_name: "Puyvalador",
    resort_address: "7 Rue des Trois Fontaines, 66210 Puyvalador, France",
    resort_description: "soleil, ciel bleu et air pur t'offriront un super moment une fois sur place. Profite-en pour skier ou snowboarder sur les pistes prévues à cet effet.
    En fin de journée, sors la luge pout t'amuser avec tes enfants. L'été, viens t'amuser à tester toutes les activités proposées par la station. Et sinon viens juste nous
    dire bonjour entre 2 balades ;)",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modéré, la passion et la raison",
    photo_asset: "puyvalador.jpg",
  )


  besse = Resort.create!(
    resort_name: "Besse",
    resort_address: "2 Place de la Mairie, 63610 Besse-et-Saint-Anastaise, France",
    resort_description: "Au pied du puy de Sancy, tu pourras prendre le temps de te détendre au ski ou au ski tranquillement en couple pour te ressourcer. Si le ski n'est pas pour toi,
    viens juste te détendre dans un spa ou une balade au choix dans cet environnement de qualité. Pense aussi à te loger: ça tombe bien, Besse a tout ce qu'il faut pour t'accuillir dans
    les conditions idéales que tu souhaiteras pour toi ou ton couple.",
    visitor_name: "#",
    roommate: "en couple",
    budget: "Illimité, c'est les vacances",
    photo_asset: "besse.jpg",
  )


  chalmazel = Resort.create!(
    resort_name: "Chalmazel",
    resort_address: "Le Bourg, 42920 Chalmazel, France",
    resort_description: "Viens profiter des charmes de Chalmazel été comme hiver avec des randos, du vélos ou bien sur du ski sans oublier les balades en raquette! A Chalmazel,
    le domaine t'offre le temps de prendre le temps pour varier les plaisirs des activités. Ensuite, profite du cadre en famille pour te ressourcer avec les bienfaits offerts
    par la nature.",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modéré, la passion et la raison",
    photo_asset: "chalmazel.jpg",
  )


  morbier = Resort.create!(
    resort_name: "Morbier",
    resort_address: "53 Route Blanche, 39400 Morbier, France",
    resort_description: "A 925m d'altitude, viens découvrir la beauté de la nature et sois à son contact. Laisse toi envouter par ses pistes l'hiver qui te surprendront
    par la qualité du domaine. L'été, viens apprécier ses forets naturelles, sa faune et la flore qui t'ouvrent tous tous tes sens et te permettra d'apprendre à tes enfants
    d'être au plus près de la nature tout en la respectant.",
    visitor_name: "#",
    roommate: "en famille",
    budget: "Modéré, la passion et la raison",
    photo_asset: "morbier.jpg",
  )


  metabief = Resort.create!(
    resort_name: "Metabief",
    resort_address: "16 Rue du Village, 25370 Métabief",
    resort_description: "En plein coeur du Jura, tu trouveras de quoi être au calme et te ressourcer en chaussant les skis ou les baskets selon la saison. L'hiver, n'oublie pas de
    t'habiller chaudement pour sortir et t'épanouir. Le reste de l'année, viens profiter des activités faites pour 2, que ce soit dans les pasces naturels ou dans les lieux faits
    pour vous ressourcer en couple ou à plusieurs.",
    visitor_name: "#",
    roommate: "en couple",
    budget: "Modeste, je veux faire des économies",
    photo_asset: "metabief.jpg",
  )

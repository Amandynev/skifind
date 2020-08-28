# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts"destroy resort"
Activity.destroy_all
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
    altitude: "2100 m",
    slopes_title: "total de pistes:",
    slopes_green: "8",
    slopes_blue: "36",
    slopes_red: "22",
    slopes_black: "16",
    opening_time: "28/11/20 au 02/05/21",
    kids_garden: "2 jardins d'enfant",
    snowpark: "2 snowparks",
    free_carpark: "payant",
    )

file = URI.open("https://www.tignes.net/uploads/media/page_block/0001/73/06fcfba68b24b6cab24cf3e56e6f43101530e418.jpeg")
tignes.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://img2.onthesnow.com/image/xl/97/tignes_resort_france_97081.jpg")
tignes.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdm0lfbn.cloudimg.io/v7/_origin_/image_uploader/photos/86/original/tignes-le-lavachet-tignes-le-lac--lavachet.jpg?p=large")

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
    altitude: "2350 m",
    slopes_title: "total de pistes:",
    slopes_green: "11",
    slopes_blue: "45",
    slopes_red: "38",
    slopes_black: "10",
    opening_time: "05/12/20 au 18/04/21",
    kids_garden: "2 jardins d'enfant",
    snowpark: "4 snowparks",
    free_carpark: "payant",
  )
file = URI.open("https://skipass.fr/p/resorts/774/header-vars-de20c-1.jpg")
vars.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.vars.com/thumbnail/detail/uploads/photos/7/4/7/0/chalet-ecuelle.jpeg?v=1531302683")
vars.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.cgh-residences.com/photos/stations/sliders/vars-2_287.jpg")
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
    altitude: "1850 m",
    slopes_title: "total de pistes:",
    slopes_green: "21",
    slopes_blue: "41",
    slopes_red: "36",
    slopes_black: "11",
    opening_time: "05/12/20 au 25/04/21",
    kids_garden: "2 jardins d'enfant",
    snowpark: "2 snowparks",
    free_carpark: "payant",
  )
file = URI.open("http://www.aaarentcars.fr/sites/default/files/styles/image_article/public/field/image/courchevel_1.jpg?itok=kzON8vZQ")
courchevel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.chalet-etagne.fr/images/interface/slide_ete.jpg")
courchevel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdn-s-www.ledauphine.com/images/2D142324-8971-47B2-AF7B-7E5495649631/NW_detail/title-1573140040.jpg")
courchevel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

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
    altitude: "1220 m",
    slopes_title: "total de pistes:",
    slopes_green: "13",
    slopes_blue: "18",
    slopes_red: "30",
    slopes_black: "8",
    opening_time: "20/12/20 au 28/03/21",
    kids_garden: "1 jardin",
    snowpark: "1 snowpark",
    free_carpark: "gratuit",
  )
file = URI.open("https://ete.combloux.com/images/cache/ed34c785dd1eb0fc718ddf07cec782a4_w1400_h800_cp.jpg")
combloux.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.terresens.com/wp-content/uploads/2018/07/Comblouxweb-768x512.jpg")
combloux.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://ete.combloux.com/images/cache/7d0bc7776e95b8b1f71488f3486dd672_w1400_h800_cp.jpg")
combloux.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

avoriaz = Resort.create!(
    resort_name: "Avoriaz",
    resort_address: "1 Place de l'Église, 74110 Morzine, France",
    resort_description: "Un domaine sympa et enneigé, qui t'offrira de belles possibilités de ski l'hiver avec tes potes. Pense bien à avoir un bon niveau car le domaine est sympa pour dévaler les pistes en ski
    ou en snow. Si tu viens à Avoriaz à une autre période de l'année, pas de problème, tu auras la possiblité de t'amuser parmi toutes les activités offertes au sein de la station, du matin au soir, surtout le soir.",
    visitor_name: "#",
    roommate: "entre potes",
    budget: "Illimité, c'est les vacances",
    photo_asset: "avoriaz.jpg",
    altitude: "1800 m",
    slopes_title: "total de pistes:",
    slopes_green: "7",
    slopes_blue: "25",
    slopes_red: "13",
    slopes_black: "6",
    opening_time: "21/12/20 au 17/04/21",
    kids_garden: "2 jardins",
    snowpark: "2 snowparks",
    free_carpark: "payant",
  )
file = URI.open("https://media-exp1.licdn.com/dms/image/C561BAQE_olXWJNwAfA/company-background_10000/0?e=1598626800&v=beta&t=9zx0TT9Cd0hfVCVi-GHuDMv2mzz_v4Qv5pTLWYd561U")
avoriaz.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
# file = URI.open("https://avoriaz.evolution2.com/wp-content/uploads/2017/09/avoriaz-ete-1900x700.jpg")
# avoriaz.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("http://media.sit.savoie-mont-blanc.com/original/75641/2-6272576.jpg")
avoriaz.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

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
    altitude: "1800 m",
    slopes_title: "total de pistes:",
    slopes_green: "7",
    slopes_blue: "22",
    slopes_red: "13",
    slopes_black: "3",
    opening_time: "Du 28/11/20 au 21/03/21",
    kids_garden: "1 jardin d'enfant",
    snowpark: "1 snowpark",
    free_carpark: "gratuit",
  )
file = URI.open("https://img6.custompublish.com/getfile.php/4274581.1046.qnbiwbwmmjql7q/468x0/6152431_4274581.jpg")
isola.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.isola2000.com/wp-content/uploads/2018/07/landscapeVTT-1280x476.jpg")
isola.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://skipass.fr/p/resorts/635/header-isola-2000-b4dc3-1.jpg")
isola.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

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
    altitude: "1700 m",
    slopes_title: "total de pistes:",
    slopes_green: "15",
    slopes_blue: "9",
    slopes_red: "8",
    slopes_black: "9",
    opening_time: "29/11/20 au 28/03/21",
    kids_garden: "1 jardin d'enfant",
    snowpark: "1 snowpark",
    free_carpark: "payant",
  )
file = URI.open("https://img2.onthesnow.com/image/gg/33/1_334855.jpg")
bolquere.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Bolquere_vue1.JPG/1280px-Bolquere_vue1.JPG")
bolquere.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://img3.onthesnow.com/image/gg/47/1_471416.jpg")
bolquere.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

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
    altitude: "1400 m",
    slopes_title: "total de pistes:",
    slopes_green: "14",
    slopes_blue: "9",
    slopes_red: "14",
    slopes_black: "8",
    opening_time: "12/12/20 au 21/03/21",
    kids_garden: "1 jard'in d'enfant",
    snowpark: "1 snowpark",
    free_carpark: "gratuit",
  )
file = URI.open("https://img6.onthesnow.com/image/gg/35/1_358547.jpg")
puyvalador.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Puyvalador_vue1.JPG/1280px-Puyvalador_vue1.JPG")
puyvalador.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://img2.onthesnow.com/image/gg/35/1_358573.jpg")
puyvalador.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')


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
    altitude: "1350 m",
    slopes_title: "total de pistes:",
    slopes_green: "5",
    slopes_blue: "9",
    slopes_red: "9",
    slopes_black: "4",
    opening_time: "12/12/20 au 11/04/21",
    kids_garden: "1 jardin",
    snowpark: "1 snowpark",
    free_carpark: "payant",
  )
file = URI.open("https://img6.onthesnow.com/image/xl/52/station_de_ski_besse_super_524975.jpg")
besse.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.belambra.fr/files/live/sites/Belambra/files/contributed/Fiche%20Club/Ete/Superbesse/FichesClub/belambra-club-vacances-sup-1.jpg?t=thumbnail524x337")
besse.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://img6.onthesnow.com/image/gg/14/1_143783.jpg")
besse.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')


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
    altitude: "1230 m",
    slopes_title: "total de pistes:",
    slopes_green: "10",
    slopes_blue: "14",
    slopes_red: "15",
    slopes_black: "5",
    opening_time: "19/12/20 au 21/03/21",
    kids_garden: "1 jardin",
    snowpark: "pas de snwopark",
    free_carpark: "payant",
  )
file = URI.open("https://esf.chalmazel.net/local/cache-gd2/84/78d957a496a87d5afd9611bf0fcb9a.jpg?1508403688")
chalmazel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://prod20181119031003542900000001.s3.eu-west-1.amazonaws.com/LARGE/94401-94958.jpeg")
chalmazel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdn-s-www.leprogres.fr/images/0D9051BC-0F29-4698-873F-796860F2BE07/NW_detail/title-1454004277.jpg")
chalmazel.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')


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
    altitude: "1000 m",
    slopes_title: "total de pistes:",
    slopes_green: "2",
    slopes_blue: "1",
    slopes_red: "1",
    slopes_black: "0",
    opening_time: "19/12/20 au 28/03/21",
    kids_garden: "1 jardin",
    snowpark: "non",
    free_carpark: "payant",
  )
file = URI.open("http://haut-jura.com/images/lesmarais2_-_J.CARROT.JPG")
morbier.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("http://www.horloge-edifice.fr/images/Documents/Morbier-Vue-village.jpg")
morbier.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://www.jura-tourism.com/wp-content/uploads/2019/01/juratourisme_07141_a5-1024x683.jpg")
morbier.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')


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
    altitude: "1150 m",
    slopes_title: "total de pistes:",
    slopes_green: "9",
    slopes_blue: "12",
    slopes_red: "11",
    slopes_black: "3",
    opening_time: "19/12/20 au 28/03/21",
    kids_garden: "1 jardin",
    snowpark: "1 snowpark",
    free_carpark: "payant",
  )
file = URI.open("https://img6.onthesnow.com/image/xl/46/remontees_mecaniques_metabief_466145.jpg")
metabief.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("http://www.metabief.fr/userfiles/images/1_SITE_2019(1).JPG")
metabief.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')
file = URI.open("https://cdn-s-www.estrepublicain.fr/images/050D81B1-9366-489E-AEE4-819C01A70E1F/NW_detail/pendant-ces-quatre-semaines-de-vacances-d-hiver-la-station-de-ski-de-metabief-espere-atteindre-la-vente-d-environ-120-000-journees-skieur-photo-er-h-c-1581446162.jpg")
metabief.landscapes.attach(io: file, filename: 'landscape.jpg', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1579755209948-20d5b46be7be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
  activity_igloo = Activity.new(
    activity_name: "Nuit insolite dans un Igloo",
    activity_description: "Quoi de plus insolite qu'une nuit dans un igloo ?\n
    Venez vivre cette expérience hors norme...",
    resort_id: tignes.id,
  )
  activity_igloo.save!
  activity_igloo.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1577489114892-8ff285156454?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=358&q=80')
activity_balade = Activity.new(
activity_name: "Balades inoubliables",
activity_description: "Besoin de vous ressourcer dans un cadre naturel exceptionnel?\n
Explorez les forêts enneigés en raquettes...",
resort_id: tignes.id,
)
activity_balade.save!
activity_balade.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/88423295_1077172352664893_5598987717175148544_o.jpg?_nc_cat=103&_nc_sid=9267fe&_nc_ohc=0TAFYYUl7kUAX_I0aFj&_nc_ht=scontent-cdt1-1.xx&oh=28f5b43110807546a286dbef0f0cf6cc&oe=5F6C7B37')
activity_soiree = Activity.new(
activity_name: "Soirées de folie",
activity_description: "Faites la tournée des bars entre amis!\n
Après l'effort, le réconfort ! Profitez d'une bonne bière ou d'un bon vin chaud...",
resort_id: tignes.id,
)
activity_soiree.save!
activity_soiree.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1575032748932-70116d68ed58?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
activity_degustation = Activity.new(
activity_name: "Dégustation de vins et fromages",
activity_description: "Découvrez le patrimoine gastronomique d'une région! \n
Dégustez en famille, entre amis ou en couple de bons vins et fromages locaux...",
resort_id: tignes.id,
)
activity_degustation.save!
activity_degustation.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')


file = URI.open('https://images.unsplash.com/photo-1470010762743-1fa2363f65ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
activity_spa = Activity.new(
activity_name: "Profitez d'un Spa",
activity_description: "Envie de vous détendre et récupérer au maximum?\n
Piscine, jacuzzi, sauna ou hammam vous attendent...",
resort_id: tignes.id,
)
activity_spa.save!
activity_spa.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t31.0-8/17240672_10155040428452618_3262403974147800417_o.jpg?_nc_cat=100&_nc_sid=9267fe&_nc_ohc=uKoB_nLZWrUAX_qKsRC&_nc_ht=scontent-cdg2-1.xx&oh=5bc4ed1ff23161fcd9eb478dec507cd7&oe=5F6DAFA6')
  activity_plongee = Activity.new(
activity_name: "Plongez sous la glace",
activity_description: "Vous êtes amateur de sensations fortes? \n
Vivez une véritable aventure et un voyage hors temps sous la glace...",
resort_id: tignes.id,
)
  activity_plongee.save!
  activity_plongee.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1549220167-afcb1da28402?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
activity_vtt = Activity.new(
activity_name: "Faites du VTT sur neige",
activity_description: "Les vrais roulent en VTT sur la neige! \n
Ranger votre vélo en hiver, c'est trop facile.. Venez vous éclater dans la neige!",
resort_id: tignes.id,
)
activity_vtt.save!
activity_vtt.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1520891422668-fe731254aff0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
activity_luge = Activity.new(
activity_name: "Divertissez vous en famille",
activity_description: "Dévalez les pistes de luge en famille, entre amis ou en couple..\n
Fous rires et amusement garantis!",
resort_id: tignes.id,
)
activity_luge.save!
activity_luge.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')
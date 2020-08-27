class Preference < ApplicationRecord
  ROOMMATE = {
    "family" => "En famille",
    "friend" => "Entre potes",
    "couple" => "En couple"
  }

  BUDGET = {
    "unlimited" => "Illimité, c'est les vacances",
    "moderate" => "Modéré, la passion et la raison",
    "economic" => "Modeste, je veux faire des économies"
  }

  DAY_ACTIVITIES = {
    "ski" => "Ski, ski, ski !",
    "stroll" => "Balades en raquettes",
    "sledge" => "luge",
    "spa" => "Spa",
    "Unusual" => "Activités insolites"
  }

  BIOLOGICAL_CLOCK = {
    "cool" => "Tranquille, je fais les choses à mon rythme",
    "early" => "Lève tôt pour en profiter au maximum",
    "party" => "Soirées après-ski"
  }

  ACCOMMODATION = {
    "Apartment" => "Appart, avec un coin cuisine",
    "house" => "Chalet, du typique",
    "hotel" => "Hôtel de luxe",
    "igloo" => "De l'insolite"
  }

  SPOT = {
    "calm" => "Au calme, juste la nature et moi",
    "no-time" => "En bas de la piste, pas de perte de temps !",
    "alcohool" => "Près des bars et de la boite de nuit",
    "shops" => "A proximité des commerces"
  }

  NIGHT_ACTIVITIES = {
    "sleep" => "Du repos pour être en forme sur les pistes",
    "pub" => "La tournée des bars",
    "restaurant" => "Un resto",
    "cinema" => "Un ciné"
  }

  EXPECTATIONS = {
    "tracks" => "Beaucoup de pistes de ski",
    "Snow" => "Une station enneigée",
    "food" => "De bons restaurants",
    "night" => "Un lieu vivant la nuit",
    "forest" => "Une forêt pour se balader",
    "act-family" => "Des activités pour toute la famille"
  }

  KILOMETERS = {
    "near" => "Au plus près de chez moi",
    "average" => "Au maximum 500kms",
    "far" => "Je suis prêt à me déplacer pour ma station idéale"
  }

    belongs_to :user
end


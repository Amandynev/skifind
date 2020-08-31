class Preference < ApplicationRecord
  belongs_to :matchable, polymorphic: true, optional: true

  ROOMMATE = {
    "family" => "En famille",
    "couple" => "En couple",
    "friend" => "Entre potes"
  }

  BUDGET = {
    "unlimited" => "Illimité, c'est les vacances",
    "moderate" => "Modéré, la passion et la raison",
    "economic" => "Modeste, je veux faire des économies"
  }

  DAY_ACTIVITIES = {
    "ski" => "Ski, ski, ski !",
    "Unusual" => "Activités insolites",
    "sledge" => "luge",
    "stroll" => "Balades en raquettes",
    "spa" => "Spa",
  }

  BIOLOGICAL_CLOCK = {
    "early" => "Lève tôt pour en profiter au maximum",
    "cool" => "Tranquille, je fais les choses à mon rythme",
    "party" => "Soirées après-ski"
  }

  ACCOMMODATION = {
    "apartment" => "Appart, avec un coin cuisine",
    "house" => "Chalet, du typique",
    "hotel" => "Hôtel de luxe",
    "igloo" => "De l'insolite"
  }

  SPOT = {
    "calm" => "Au calme, juste la nature et moi",
    "no-time" => "En bas de la piste, pas de perte de temps !",
    "shops" => "A proximité des commerces",
    "alcohool" => "Près des bars et de la boite de nuit",
  }

  NIGHT_ACTIVITIES = {
    "sleep" => "Du repos pour être en forme sur les pistes",
    "cinema" => "Un ciné",
    "restaurant" => "Un resto",
    "pub" => "La tournée des bars"
  }

  EXPECTATIONS = {
    "snow" => "Une station enneigée",
    "tracks" => "Beaucoup de pistes de ski",
    "night" => "Un lieu vivant la nuit",
    "food" => "De bons restaurants",
    "forest" => "Une forêt pour se balader",
    "act-family" => "Des activités pour toute la famille"
  }

  KILOMETERS = {
    "near" => "Au plus près de chez moi",
    "average" => "Au maximum 500kms",
    "far" => "Je suis prêt à me déplacer pour ma station idéale"
  }


  def score(other_preference)
  #   # Calcul

    roommate_score = score_criterion(self.roommate, other_preference.roommate, ROOMMATE)
    budget_score = score_criterion(self.budget, other_preference.budget, BUDGET)
    day_activities_score = score_criterion(self.day_activities, other_preference.day_activities, DAY_ACTIVITIES)
    biological_score = score_criterion(self.biological_clock, other_preference.biological_clock, BIOLOGICAL_CLOCK)
    accommodation_score = score_criterion(self.accommodation, other_preference.accommodation, ACCOMMODATION)
    spot_score = score_criterion(self.spot, other_preference.spot, SPOT)
    night_activities_score = score_criterion(self.night_activities, other_preference.night_activities, NIGHT_ACTIVITIES)
    expectations_score = score_criterion(self.expectations, other_preference.expectations, EXPECTATIONS)
    kilometers_score = score_criterion(self.kilometers, other_preference.kilometers, KILOMETERS)
  #   # 35 points au total

    @preference_score = roommate_score + budget_score + day_activities_score + biological_score + accommodation_score + night_activities_score + expectations_score + kilometers_score

    return total_score = (1 - (@preference_score / 35)) * 100

  end

  def score_criterion(user_criterion, resort_criterion, criteria)
    elements = criteria.keys # ["family", "couple", "friend"]
    user_index = elements.find_index(user_criterion) # 0
    resort_index = elements.find_index(resort_criterion) # 2

    # on mesure l'écart entre la préférence du user et la préférence du resort
    # pour cela, on prend la taille des préferences et on retire l'écart entre les préferences comparées
    score = elements.size - (user_index - resort_index).abs
  end
end

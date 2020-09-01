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
    @preference_score = [
      score_criterion(self.roommate, other_preference.roommate, ROOMMATE),
      score_criterion(self.budget, other_preference.budget, BUDGET),
      score_criterion(self.day_activities, other_preference.day_activities, DAY_ACTIVITIES),
      score_criterion(self.biological_clock, other_preference.biological_clock, BIOLOGICAL_CLOCK),
      score_criterion(self.accommodation, other_preference.accommodation, ACCOMMODATION),
      score_criterion(self.spot, other_preference.spot, SPOT),
      score_criterion(self.night_activities, other_preference.night_activities, NIGHT_ACTIVITIES),
      score_criterion(self.expectations, other_preference.expectations, EXPECTATIONS),
      score_criterion(self.kilometers, other_preference.kilometers, KILOMETERS)
    ].sum

    return ((@preference_score / 35.0) * 100).round
  end

  def score_criterion(user_criterion, resort_criterion, criteria)
    elements = criteria.keys # ["family", "couple", "friend"]
    user_index = elements.find_index(user_criterion) # 0
    resort_index = elements.find_index(resort_criterion) # 2
    p elements
    p user_index
    p resort_index
    # on mesure l'écart entre la préférence du user et la préférence du resort
    # pour cela, on prend la taille des préferences et on retire l'écart entre les préferences comparées
    if user_index and resort_index
      score = elements.size - (user_index - resort_index).abs
    else
      score = 1 # ... remove
    end
  end
end

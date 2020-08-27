class Preference < ApplicationRecord
  ROOMATE = ["En famille", "Entre potes", "En couple"]
  BUDGET = ["Illimité, c'est les vacances", "Modéré, la passion et la raison", "Modeste, je veux faire des économies"]
  DAY_ACTIVITIES = ["Ski, ski, ski !", "Balades en raquettes", "Luge", "Spa", "Activités insolites"]
  BIOLOGICAL_CLOCK = ["Tranquille, je fais les choses à mon rythme", "Lève tôt pour en profiter au maximum", "Soirées après-ski"]
  ACCOMMODATION = ["Appart, avec un coin cuisine", "Chalet, du typique", "Hôtel de luxe", "De l'insolite"]
  SPOT = ["Au calme, juste la nature et moi", "En bas de la piste, pas de perte de temps !", "Près des bars et de la boite de nuit", "A proximité des commerces"]
  NIGHT_ACTIVITIES = ["Du repos pour être en forme sur les pistes", "La tournée des bars", "Un resto", "Un ciné"]
  EXPECTATIONS = ["Beaucoup de pistes de ski", "Une station enneigée", "De bons restaurants", "Un lieu vivant la nuit", "Une forêt pour se balader", "Des activités pour toute la famille"]
  KILOMETERS = ["Au plus près de chez moi", "Au maximum 500kms", "Je suis prêt à me déplacer pour ma station idéale"]

    belongs_to :user
end
["Du repos pour être en forme sur les pistes", "La tournée des bars", "Un resto", "Un ciné"]

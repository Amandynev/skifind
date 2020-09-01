class Resort < ApplicationRecord
    has_many :activities
    geocoded_by :resort_address
    after_validation :geocode, if: :will_save_change_to_resort_address?
    has_many_attached :landscapes

    has_one :preference, as: :matchable

    def distance(preference)
      rad_per_deg = Math::PI/180  # PI / 180
      rkm = 6371                  # Earth radius in kilometers
      rm = rkm * 1000             # Radius in meters
      loc2 = [latitude, longitude]
      loc1 = [preference.latitude, preference.longitude]
      dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
      dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

      lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
      lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

      a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
      c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

      (rm * c / 1000).round# Delta in meters
    end
end

class Resort < ApplicationRecord
    has_many :activities
    geocoded_by :resort_address
    after_validation :geocode, if: :will_save_change_to_resort_address?
    has_many_attached :landscapes

    has_one :preference, as: :matchable
end

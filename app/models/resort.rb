class Resort < ApplicationRecord
    has_many :activities
    geocoded_by :resort_address
    after_validation :geocode, if: :will_save_change_to_resort_address?
end

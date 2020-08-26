class Resort < ApplicationRecord
    has_many :activities
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
end

class Activity < ApplicationRecord
  belongs_to :resort
  has_one_attached :photo
end

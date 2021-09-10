class SavedPark < ApplicationRecord
    belongs_to :park
    belongs_to :user
    has_many :attractions
end

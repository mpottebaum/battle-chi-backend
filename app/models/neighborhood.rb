class Neighborhood < ApplicationRecord
    belongs_to :zone

    has_many :militia

    has_many :borders
    has_many :adjacent_neighborhoods, through: :borders, source: :neighborhoods

    has_one :card
end

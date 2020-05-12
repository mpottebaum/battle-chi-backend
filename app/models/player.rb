class Player < ApplicationRecord
    belongs_to :game

    has_many :militia
    has_many :neighborhoods, through: :militia

    has_many :player_cards
    has_many :cards, through: :player_cards
end

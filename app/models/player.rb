class Player < ApplicationRecord
    belongs_to :game

    has_many :militia
    has_many :neighborhoods, through: :militia

    has_many :player_cards
    has_many :cards, through: :player_cards

    has_many :attack_battles, class_name: 'Battle', foreign_key: 'attack_player_id'
    has_many :defense_battles, class_name: 'Battle', foreign_key: 'defense_player_id'
end

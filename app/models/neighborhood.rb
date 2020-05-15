class Neighborhood < ApplicationRecord
    belongs_to :zone

    has_many :militia

    has_many :borders
    has_many :adjacent_neighborhoods, through: :borders

    has_one :card

    def find_militia(game_id)
        militia.filter do |militium|
            militium.player.game_id == game_id
        end
    end
end

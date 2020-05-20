class Player < ApplicationRecord
    belongs_to :game

    has_one :place_militium

    has_many :militia
    has_many :neighborhoods, through: :militia

    has_many :player_cards
    has_many :cards, through: :player_cards

    has_many :attack_battles, class_name: 'Battle', foreign_key: 'attack_player_id'
    has_many :defense_battles, class_name: 'Battle', foreign_key: 'defense_player_id'

    def fortify(params)
        if params[:skip]
            return
        end
        from_neighborhood_militia = militia.filter {|militium| militium.neighborhood_id == params[:from_neighborhood_id]}
        fortifying_militia = from_neighborhood_militia.sample(params[:num_militia])
        fortifying_militia.each do |militium|
            militium.update(neighborhood_id: params[:to_neighborhood_id])
        end
    end

    def create_militia(neighborhood_id)
        militia.create(neighborhood_id: neighborhood_id)
        militia_placed = place_militium.militia_placed + 1
        place_militium.update(militia_placed: militia_placed)
    end

    def set_place_militia
        num_militia = neighborhoods.uniq.length / 3
        place_militium.update(num_militia: num_militia)
    end
end

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
        controlled_zones_bonuses = controlled_zones.map {|zone| zone.num_militia}
        num_militia = num_militia + controlled_zones_bonuses.sum
        if num_militia < 3
            place_militium.update(num_militia: 3)
        else
            place_militium.update(num_militia: num_militia)
        end
    end

    def controlled_zones
        Zone.all.filter do |zone|
            zone.neighborhoods.all? {|neighborhood| neighborhoods.include?(neighborhood)}
        end
    end

    def trade_cards(card_ids)
        num_militia = place_militium.num_militia + game.card_bonus
        place_militium.update(num_militia: num_militia)
        
        
        disable_cards(card_ids)
        
        num_sets = game.card_sets + 1
        game.update(card_sets: num_sets)

        if any_neighborhoods?(card_ids)
            return any_neighborhoods?(card_ids)
        else
            return nil
        end
    end

    def disable_cards(card_ids)
        player_cards.each do |player_card|
            if card_ids.include?(player_card.card.id)
                player_card.update(traded: true)
            end
        end
    end

    def any_neighborhoods?(card_ids)
        cards = Card.all.select {|card| card_ids.include?(card.id)}
        neighborhood_ids = neighborhoods.map {|neighborhood| neighborhood.id}
        cards.select {|card| neighborhood_ids.include?(card.neighborhood_id)}
    end
end

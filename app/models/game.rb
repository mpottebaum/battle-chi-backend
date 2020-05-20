class Game < ApplicationRecord
    has_many :players
    has_many :militia, through: :players

    has_many :battles

    def create_player(params)
        if players.length == 0
            player = players.create(name: params[:name], turn_order_num: 1)
            # neighborhoods = Neighborhood.all.sample(21)
        else
            # opponent = players.first
            # neighborhoods = Neighborhood.all.reject do |neighborhood|
            #     opponent.militia.any? {|militium| militium.neighborhood == neighborhood}
            # end
            player = players.create(name: params[:name], turn_order_num: 2)
        end
        player.create_place_militium(num_militia: 1, militia_placed: 0)
        # neighborhoods.each do |neighborhood|
        #     player.militia.create(neighborhood: neighborhood)
        #     player.militia.create(neighborhood: neighborhood)
        # end
        player
    end

    def cycle_turn
        if turn_order_num == num_players
            new_turn = turn_num + 1
            update(turn_order_num: 1, turn_num: new_turn, turn_stage: 0)
        else
            new_num = turn_order_num + 1
            update(turn_order_num: new_num, turn_stage: 0)
        end
        current_player = players.find_by(turn_order_num: turn_order_num)
        if !setup
            current_player.set_place_militia
        end
    end

    def is_setup
        players.all? {|player| player.militia.length === 45}
    end
end

class Game < ApplicationRecord
    has_many :players
    has_many :militia, through: :players

    has_many :player_cards, through: :players
    has_many :cards, through: :player_cards

    has_many :battles

    def create_player_normal(params)
        if players.length == 0
            turn_order_num = select_turn_order
            player = players.create(name: params[:name], turn_order_num: turn_order_num)
        else
            opponent = players.first
            turn_order_num = opponent.turn_order_num == 1 ? 2 : 1
            player = players.create(name: params[:name], turn_order_num: turn_order_num)
        end
        player.create_place_militium(num_militia: 1, militia_placed: 0)
        player
    end

    def create_player_random(params)
        if players.length == 0
            update(setup: false)
            turn_order_num = select_turn_order
            player = players.create(name: params[:name], turn_order_num: turn_order_num)
            neighborhoods = Neighborhood.all.sample(21)
        else
            opponent = players.first
            turn_order_num = opponent.turn_order_num == 1 ? 2 : 1
            neighborhoods = Neighborhood.all.reject do |neighborhood|
                opponent.militia.any? {|militium| militium.neighborhood == neighborhood}
            end
            player = players.create(name: params[:name], turn_order_num: turn_order_num)
        end
        player.create_place_militium(num_militia: 7, militia_placed: 0)
        neighborhoods.each do |neighborhood|
            player.militia.create(neighborhood: neighborhood)
            player.militia.create(neighborhood: neighborhood)
        end
        player.set_place_militia
        player
    end

    def select_turn_order
        rand(1..2)
    end

    def cycle_turn
        current_player = players.find_by(turn_order_num: turn_order_num)
        if !remaining_cards.empty? && current_player.draw_card
            card = remaining_cards.sample
            current_player.player_cards.create(card: card)
            current_player.update(draw_card: false)
        end
        if turn_order_num == num_players
            new_turn = turn_num + 1
            update(turn_order_num: 1, turn_num: new_turn, turn_stage: 0)
        else
            new_num = turn_order_num + 1
            update(turn_order_num: new_num, turn_stage: 0)
        end
        next_player = players.find_by(turn_order_num: turn_order_num)
        if !setup
            next_player.set_place_militia
        end
    end

    def remaining_cards
        Card.all.filter do |card|
            cards.include?(card) == false
        end
    end

    def is_setup
        players.all? {|player| player.militia.length === 45}
    end

    def card_bonus
        case card_sets
            when 0
                return 4
            when 1
                return 6
            when 2
                return 8
            when 3
                return 10
            when 4
                return 12
            when 5
                return 15
            else
                return ((card_sets - 6) * 5) + 15
        end
    end

    def game_over?
        if players.any? {|player| player.militia.length == 0}
            update(completed: true)
        end
    end
end

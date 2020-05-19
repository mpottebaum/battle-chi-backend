class Battle < ApplicationRecord
    belongs_to :game

    belongs_to :attack_player, class_name: 'Player'
    belongs_to :defense_player, class_name: 'Player'

    has_many :battle_fronts

    def fight
        create_fronts
        if defense_militia == 2
            score_two_defense
        else
            score_one_defense
        end
    end

    def score_two_defense
        attack_fronts = battle_fronts.filter {|front| front.player == attack_player}
        highest_attack_fronts = attack_fronts.max(2) do |front_1, front_2|
            front_1.result <=> front_2.result
        end
        defense_fronts = battle_fronts.filter {|front| front.player == defense_player}
        highest_defense_fronts = defense_fronts.max(2) do |front_1, front_2|
            front_1.result <=> front_2.result
        end
        if highest_attack_fronts.first.result > highest_defense_fronts.first.result && highest_attack_fronts.last.result > highest_defense_fronts.last.result
            militia = defense_player.militia.find_all {|militium| militium.neighborhood_id == defense_neighborhood_id}
            militia.first.destroy
            militia.last.destroy
        elsif highest_attack_fronts.first.result > highest_defense_fronts.first.result && highest_attack_fronts.last.result <= highest_defense_fronts.last.result
            defense_militium = defense_player.militia.detect {|militium| militium.neighborhood_id == defense_neighborhood_id}
            defense_militium.destroy
            attack_militium = attack_player.militia.detect {|militium| militium.neighborhood_id == attack_neighborhood_id}
            attack_militium.destroy
        else
            militia = attack_player.militia.detect {|militium| militium.neighborhood_id == attack_neighborhood_id}
            militia.first.destroy
            militia.last.destroy
        end
    end

    def score_one_defense
        attack_fronts = battle_fronts.filter {|front| front.player == attack_player}
        highest_attack = attack_fronts.max do |front_1, front_2|
            front_1.result <=> front_2.result
        end
        defense_fronts = battle_fronts.filter {|front| front.player == defense_player}
        highest_defense = defense_fronts.max do |front_1, front_2|
            front_1.result <=> front_2.result
        end
        if highest_attack.result > highest_defense.result
            militium = defense_player.militia.detect {|militium| militium.neighborhood_id == defense_neighborhood_id}
        else
            militium = attack_player.militia.detect {|militium| militium.neighborhood_id == attack_neighborhood_id}
        end
        militium.destroy
    end

    def create_fronts
        attack_militia.times do
            result = rand(1..6)
            battle_front = battle_fronts.create(player: attack_player, result: result)
        end
        defense_militia.times do
            result = rand(1..6)
            battle_front = battle_fronts.create(player: defense_player, result: result)
        end
    end
end

class Game < ApplicationRecord
    has_many :players
    has_many :militia, through: :players

    def create_player(params)
        if players.length == 0
            player = players.create(name: params[:name], turn_order_num: 1)
            neighborhoods = Neighborhood.all.sample(30)
        else
            opponent = players.first
            neighborhoods = Neighborhood.all.reject do |neighborhood|
                opponent.militia.any? {|militium| militium.neighborhood == neighborhood}
            end
            player = players.create(name: params[:name], turn_order_num: 2)
        end
        neighborhoods.each do |neighborhood|
            player.militia.create(neighborhood: neighborhood)
        end
        player
    end
end

class Game < ApplicationRecord
    has_many :players

    def create_player(params)
        if players.length == 0
            players.create(name: params[:name], turn_order_num: 1)
        else
            players.create(name: params[:name], turn_order_num: 2)
        end
    end
end

class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2)
        render json: game
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def update
        game = Game.find(params[:id])
        new_num = game.num_players + 1
        game.update(num_players: new_num)

        serialized_data = ActiveModelSerializers::Adapter::Json.new(
          GameSerializer.new(game)
        ).serializable_hash
        ActionCable.server.broadcast "games_channel_#{game.id}", serialized_data
        head :ok
    end

end
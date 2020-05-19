class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2)
        render json: game
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def fortify
        game = Game.find(params[:id])
        game.update(turn_stage: 2)

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(game)
        ).serializable_hash
        PlayersChannel.broadcast_to game, serialized_game
    end

end
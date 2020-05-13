class PlayersController < ApplicationController

    def create
        game = Game.find(params[:game_id])
        player = game.players.create(player_params)
        PlayersChannel.broadcast_to game, player
        head :ok
    end

    def show
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end
end
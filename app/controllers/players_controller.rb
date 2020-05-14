class PlayersController < ApplicationController

    def create
        game = Game.find(player_params[:game_id])
        player = game.players.create(player_params)
        PlayersChannel.broadcast_to game, {id: player.id, name: player.name}
        head :ok
    end

    def show
    end

    private

    def player_params
        params.require(:player).permit(:name, :game_id)
    end
end
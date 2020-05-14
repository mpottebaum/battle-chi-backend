class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2)
        ActionCable.server.broadcast 'games_channel', {id: game.id, num_players: game.num_players}
        head :ok
    end

    def show
        game = Game.find(params[:id])
        ActionCable.server.broadcast 'games_channel', {id: game.id, num_players: game.num_players}
        head :ok
    end

end
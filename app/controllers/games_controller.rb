class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2)
        ActionCable.server.broadcast 'games_channel', game
        head :ok
    end

    def show
    end

end
class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2)
        render json: game
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def retrieve
        game = Game.find(params[:id])

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(game)
        ).serializable_hash

        neighborhoods = Neighborhood.all
        serialized_neighborhoods = Neighborhood.all.map do |neighborhood|
            serialized_neighborhood = ActiveModelSerializers::Adapter::Json.new(
                NeighborhoodSerializer.new(neighborhood)
            ).serializable_hash
            serialized_neighborhood[:neighborhood]
        end
        zones = Zone.all

        render json: {
            game: serialized_game[:game],
            neighborhoods: serialized_neighborhoods,
            zones: zones
        }
    end

    def fortify
        game = Game.find(params[:id])
        game.update(turn_stage: 2)

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            CycleGameSerializer.new(game)
        ).serializable_hash
        PlayersChannel.broadcast_to game, serialized_game
    end

    def cycle
        game = Game.find(params[:id])
        game.cycle_turn

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            CycleGameSerializer.new(game)
        ).serializable_hash
        PlayersChannel.broadcast_to game, serialized_game
    end

end
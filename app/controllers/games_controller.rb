class GamesController < ApplicationController

    def create
        game = Game.create(num_players: 2, random: params[:random])
        render json: game
    end

    def show
        game = Game.find(params[:id])
        if game && game.players.length < game.num_players
            render json: game
        else
            render json: {error: 'The game you are trying to join is full'}
        end
    end

    def retrieve
        game = Game.find(params[:id])

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(game)
        ).serializable_hash

        serialized_neighborhoods = Neighborhood.all.map do |neighborhood|
            serialized_neighborhood = ActiveModelSerializers::Adapter::Json.new(
                NeighborhoodSerializer.new(neighborhood)
            ).serializable_hash
            serialized_neighborhood[:neighborhood]
        end
        serialized_zones = Zone.all.map do |zone|
            serialized_zone = ActiveModelSerializers::Adapter::Json.new(
                ZoneSerializer.new(zone)
            ).serializable_hash
            serialized_zone[:zone]
        end

        render json: {
            game: serialized_game[:game],
            neighborhoods: serialized_neighborhoods,
            zones: serialized_zones
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
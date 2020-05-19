class PlayersController < ApplicationController

    def create
        game = Game.find(player_params[:game_id])
        player = game.create_player(player_params)
        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game

        render json: player
    end

    def fortify
        player = Player.find(params[:id])
        player.fortify(player_params)

        player.game.cycle_turn
        
        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    # def update
    #     player = Player.find(params[:id])
    #     player.militia.create(neighborhood_id: 1)
    #     serialized = ActiveModelSerializers::Adapter::Json.new(
    #         GameSerializer.new(player.game)
    #     ).serializable_hash
    #     PlayersChannel.broadcast_to player.game, serialized
    #     head :ok
    # end

    private

    def player_params
        params.require(:player).permit(:name, :game_id, :to_neighborhood_id, :from_neighborhood_id, :num_militia)
    end
end
class MilitiaController < ApplicationController

    def create
        player = Player.find(params[:player_id])
        player.create_militia(militium_params[:neighborhood_id])
        
        if player.place_militium.num_militia == player.place_militium.militia_placed
            player.game.update(turn_stage: 1)
            player.place_militium.update(militia_placed: 0)
        end

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    private

    def militium_params
        params.require(:militium).permit(:neighborhood_id)
    end
end
class MilitiaController < ApplicationController

    def create
        player = Player.find(params[:player_id])
        player.militia.create(
            player: player,
            neighborhood_id: militium_params[:neighborhood_id]
        )

        if params[:end_stage]
            player.game.update(turn_stage: 1)
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
class BattlesController < ApplicationController

    def create
        player = Player.find(params[:player_id])
        Battle.create(
            game: player.game,
            attack_player_id: player.id,
            attack_neighborhood_id: battle_params[:neighborhood_id],
            attack_militia: battle_params[:militia]
        )

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    def update
        player = Player.find(params[:player_id])
        Battle.create(
            game: player.game,
            defense_player_id: player.id,
            defense_neighborhood_id: battle_params[:neighborhood_id],
            defense_militia: battle_params[:militia]
        )

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    private

    def battle_params
        params.require(:battle).permit(:neighborhood_id, :militia)
    end
end
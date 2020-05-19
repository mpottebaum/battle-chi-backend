class BattlesController < ApplicationController

    def create
        player = Player.find(params[:player_id])
        Battle.create(
            game: player.game,
            attack_player_id: player.id,
            attack_neighborhood_id: battle_params[:attack_neighborhood_id],
            attack_militia: battle_params[:attack_militia],
            defense_player_id: battle_params[:defense_player_id],
            defense_neighborhood_id: battle_params[:defense_neighborhood_id]
        )

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    def update
        player = Player.find(params[:player_id])
        battle = Battle.find(params[:id])
        battle.update(
            defense_militia: battle_params[:defense_militia]
        )
        battle.fight

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    private

    def battle_params
        params.require(:battle).permit(
            :attack_neighborhood_id,
            :attack_militia,
            :defense_player_id,
            :defense_neighborhood_id,
            :defense_militia
        )
    end
end
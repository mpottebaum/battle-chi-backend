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
            BattleGameSerializer.new(player.game)
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
        player.game.game_over?

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    def complete
        player = Player.find(params[:player_id])
        battle = Battle.find(params[:id])
        battle.update(active: false)

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            BattleGameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end

    def conquer
        player = Player.find(params[:player_id])
        battle = Battle.find(params[:id])
        battle.conquer(params[:num_militia])
        battle.update(active: false)
        if !player.draw_card
            player.update(draw_card: true)
        end

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
class CardsController < ApplicationController

    def trade
        player = Player.find(params[:player_id])
        player.trade_cards(params[:card_ids])

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            CycleGameSerializer.new(player.game)
        ).serializable_hash
        PlayersChannel.broadcast_to player.game, serialized_game
    end
end
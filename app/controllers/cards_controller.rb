class CardsController < ApplicationController

    def trade
        player = Player.find(params[:player_id])
        match_neighborhood_cards = player.trade_cards(params[:card_ids])

        serialized_game = ActiveModelSerializers::Adapter::Json.new(
            CreateMilitiumGameSerializer.new(player.game)
        ).serializable_hash

        if match_neighborhood_cards
            serialized_game[:match_neighborhood_cards] = match_neighborhood_cards
        end
        PlayersChannel.broadcast_to player.game, serialized_game
    end
end
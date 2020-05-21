class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :game_id, :turn_order_num, :place_militium, :cards

  def cards
    untraded_player_cards = self.object.player_cards.select {|player_card| !player_card.traded}
    untraded_player_cards.map {|player_card| player_card.card}
  end
end

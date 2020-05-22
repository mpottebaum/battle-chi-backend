class FortifyGameSerializer < ActiveModel::Serializer
  attributes :id, :num_players, :turn_num, :turn_stage, :turn_order_num, :card_sets, :setup, :militia, :players

  def players
    self.object.players.map do |player|
      serialized_player = ActiveModelSerializers::Adapter::Json.new(
        PlayerSerializer.new(player)
      ).serializable_hash
      serialized_player[:player]
    end
  end
end

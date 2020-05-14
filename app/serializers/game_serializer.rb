class GameSerializer < ActiveModel::Serializer
  attributes :id, :num_players, :turn_num, :turn_stage, :turn_order_num, :players

  def players
    self.object.players.map do |player|
      ActiveModelSerializers::Adapter::Json.new(
        PlayerSerializer.new(player)
      ).serializable_hash
    end
  end
end

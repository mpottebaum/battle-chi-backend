class GameSerializer < ActiveModel::Serializer
  attributes :id, :num_players, :players

  def players
    self.object.players.map do |player|
      ActiveModelSerializers::Adapter::Json.new(
        PlayerSerializer.new(player)
      ).serializable_hash
    end
  end
end

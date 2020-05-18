class GameSerializer < ActiveModel::Serializer
  attributes :id, :num_players, :turn_num, :turn_stage, :turn_order_num, :players, :militia, :battles

  def players
    self.object.players.map do |player|
      serialized_player = ActiveModelSerializers::Adapter::Json.new(
        PlayerSerializer.new(player)
      ).serializable_hash
      serialized_player[:player]
    end
  end

  # def neighborhoods
  #   Neighborhood.all.map do |neighborhood|
  #     serialized_neighborhood = ActiveModelSerializers::Adapter::Json.new(
  #       NeighborhoodSerializer.new(neighborhood)
  #     ).serializable_hash
  #     serialized_neighborhood[:neighborhood][:militia] = neighborhood.find_militia(self.object.id)
  #     serialized_neighborhood[:neighborhood]
  #   end
  # end

  # def zones
  #   Zone.all
  # end
end

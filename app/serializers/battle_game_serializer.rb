class BattleGameSerializer < ActiveModel::Serializer
  attributes :id, :num_players, :turn_num, :turn_stage, :turn_order_num, :card_sets, :setup, :battles

  # def players
  #   self.object.players.map do |player|
  #     serialized_player = ActiveModelSerializers::Adapter::Json.new(
  #       PlayerSerializer.new(player)
  #     ).serializable_hash
  #     serialized_player[:player]
  #   end
  # end

  def battles
    self.object.battles.map do |battle|
      serialized_battle = ActiveModelSerializers::Adapter::Json.new(
        BattleSerializer.new(battle)
      ).serializable_hash
      serialized_battle[:battle]
    end
  end
end

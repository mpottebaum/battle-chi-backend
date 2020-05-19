class BattleSerializer < ActiveModel::Serializer
  attributes :id, :attack_player_id, :attack_neighborhood_id, :attack_militia, :defense_player_id, :defense_neighborhood_id, :defense_militia, :battle_fronts, :active

end

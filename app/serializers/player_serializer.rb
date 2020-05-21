class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :game_id, :turn_order_num, :place_militium, :cards
end

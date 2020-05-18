class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :game_id, :turn_order_num, :battles

  # def militia
  #   self.object.militia
  # end

  # def neighborhoods
  #   self.object.neighborhoods
  # end
end

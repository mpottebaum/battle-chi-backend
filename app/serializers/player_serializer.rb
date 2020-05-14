class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :game_id, :militia, :neighborhoods

  def militia
    self.object.militia
  end

  def neighborhoods
    self.object.neighborhoods
  end
end

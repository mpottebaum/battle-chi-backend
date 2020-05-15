class NeighborhoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :zone, :adjacent_neighborhoods

  def adjacent_neighborhoods
    self.object.adjacent_neighborhoods
  end
end

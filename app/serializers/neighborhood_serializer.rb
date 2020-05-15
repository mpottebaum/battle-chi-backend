class NeighborhoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :zone, :adjacent_neighborhood_ids

  def adjacent_neighborhood_ids
    self.object.adjacent_neighborhoods.map {|neighborhood| neighborhood.id}
  end

end

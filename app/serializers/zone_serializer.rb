class ZoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :neighborhood_ids, :num_militia
end

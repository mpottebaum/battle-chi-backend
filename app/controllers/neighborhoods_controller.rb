class NeighborhoodsController < ApplicationController

    def index
        serialized_neighborhoods = Neighborhood.all.map do |neighborhood|
            serialized_neighborhood = ActiveModelSerializers::Adapter::Json.new(
                NeighborhoodSerializer.new(neighborhood)
            ).serializable_hash
            serialized_neighborhood[:neighborhood]
        end
        serialized_zones = Zone.all.map do |zone|
            serialized_zone = ActiveModelSerializers::Adapter::Json.new(
                ZoneSerializer.new(zone)
            ).serializable_hash
            serialized_zone[:zone]
        end
        
        render json: {
            neighborhoods: serialized_neighborhoods,
            zones: serialized_zones
        }
    end

end
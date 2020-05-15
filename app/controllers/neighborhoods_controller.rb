class NeighborhoodsController < ApplicationController

    def index
        neighborhoods = Neighborhood.all
        serialized_neighborhoods = Neighborhood.all.map do |neighborhood|
            serialized_neighborhood = ActiveModelSerializers::Adapter::Json.new(
                NeighborhoodSerializer.new(neighborhood)
            ).serializable_hash
            serialized_neighborhood[:neighborhood]
        end
        zones = Zone.all
        render json: {
            neighborhoods: serialized_neighborhoods,
            zones: zones
        }
    end
end
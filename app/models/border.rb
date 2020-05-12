class Border < ApplicationRecord
    belongs_to :neighborhood
    belongs_to :adjacent_neighborhood, class_name: 'Neighborhood'
end

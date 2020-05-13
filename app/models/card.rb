class Card < ApplicationRecord
    belongs_to :neighborhood, optional: true
    
end

class Battle < ApplicationRecord
    belongs_to :attack_player, class_name: 'Player'
    belongs_to :defense_player, class_name: 'Player', optional: true
end

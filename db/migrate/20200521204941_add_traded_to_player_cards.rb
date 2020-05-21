class AddTradedToPlayerCards < ActiveRecord::Migration[6.0]
  def change
    add_column :player_cards, :traded, :boolean, :default => false
  end
end

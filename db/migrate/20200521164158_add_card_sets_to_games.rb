class AddCardSetsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :card_sets, :integer, :default => 0
  end
end

class AddTurnIndicatorsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :turn_num, :integer, :default => 1
    add_column :games, :turn_stage, :integer, :default => 0
    add_column :games, :turn_order_num, :integer, :default => 1
  end
end

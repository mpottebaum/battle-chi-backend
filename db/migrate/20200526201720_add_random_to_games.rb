class AddRandomToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :random, :boolean
  end
end

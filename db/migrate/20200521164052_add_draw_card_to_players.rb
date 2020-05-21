class AddDrawCardToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :draw_card, :boolean, :default => false
  end
end

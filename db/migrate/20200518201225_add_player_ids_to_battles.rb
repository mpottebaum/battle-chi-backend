class AddPlayerIdsToBattles < ActiveRecord::Migration[6.0]
  def change
    add_column :battles, :attack_player_id, :integer
    add_column :battles, :defense_player_id, :integer
    remove_column :battles, :game_id
  end
end

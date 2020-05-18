class AddGameIdToBattles < ActiveRecord::Migration[6.0]
  def change
    add_column :battles, :game_id, :integer
  end
end

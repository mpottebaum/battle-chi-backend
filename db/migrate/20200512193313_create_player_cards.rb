class CreatePlayerCards < ActiveRecord::Migration[6.0]
  def change
    create_table :player_cards do |t|
      t.integer :player_id
      t.integer :card_id

      t.timestamps
    end
  end
end

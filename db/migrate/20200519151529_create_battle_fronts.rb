class CreateBattleFronts < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_fronts do |t|
      t.integer :battle_id
      t.integer :player_id
      t.integer :result

      t.timestamps
    end
  end
end

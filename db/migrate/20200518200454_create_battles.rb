class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.integer :attack_neighborhood_id
      t.integer :attack_militia
      t.integer :defense_neighborhood_id
      t.integer :defense_militia

      t.timestamps
    end
  end
end

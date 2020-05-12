class CreateMilitia < ActiveRecord::Migration[6.0]
  def change
    create_table :militia do |t|
      t.integer :player_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end

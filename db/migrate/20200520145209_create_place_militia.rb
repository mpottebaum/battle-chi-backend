class CreatePlaceMilitia < ActiveRecord::Migration[6.0]
  def change
    create_table :place_militia do |t|
      t.integer :player_id
      t.integer :num_militia
      t.integer :militia_placed

      t.timestamps
    end
  end
end

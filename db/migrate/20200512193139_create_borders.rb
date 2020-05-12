class CreateBorders < ActiveRecord::Migration[6.0]
  def change
    create_table :borders do |t|
      t.integer :neighborhood_id
      t.integer :adjacent_neighborhood_id

      t.timestamps
    end
  end
end

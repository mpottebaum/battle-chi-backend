class CreateNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhoods do |t|
      t.integer :zone_id
      t.string :name

      t.timestamps
    end
  end
end

class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :neighborhood_id
      t.string :fighter_type

      t.timestamps
    end
  end
end

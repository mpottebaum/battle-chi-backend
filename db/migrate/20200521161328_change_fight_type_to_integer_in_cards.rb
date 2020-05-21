class ChangeFightTypeToIntegerInCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :fighter_type
    add_column :cards, :fighter_type, :integer
  end
end

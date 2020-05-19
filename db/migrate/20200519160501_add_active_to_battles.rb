class AddActiveToBattles < ActiveRecord::Migration[6.0]
  def change
    add_column :battles, :active, :boolean, :default => true
  end
end

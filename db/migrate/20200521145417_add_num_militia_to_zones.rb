class AddNumMilitiaToZones < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :num_militia, :integer
  end
end

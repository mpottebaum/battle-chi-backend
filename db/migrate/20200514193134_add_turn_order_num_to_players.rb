class AddTurnOrderNumToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :turn_order_num, :integer
  end
end

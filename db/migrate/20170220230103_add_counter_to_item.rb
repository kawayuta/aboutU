class AddCounterToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :item_active_number, :integer, default: "0"
  end
end

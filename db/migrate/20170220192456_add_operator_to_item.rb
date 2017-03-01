class AddOperatorToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :created_by, :integer
    add_column :items, :updated_by, :integer
  end
end

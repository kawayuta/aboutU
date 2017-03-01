class AddOperatorToHome < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :created_by, :integer
    add_column :homes, :updated_by, :integer
  end
end

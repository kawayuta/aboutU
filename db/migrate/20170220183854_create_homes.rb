class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :home_item_name
      t.integer :home_item_number
      t.string :home_item_request_teacher
      t.string :home_item_request_assistant
      t.integer :home_item_days

      t.string :home_item_days_start
      t.string :home_item_days_end

      t.timestamps
    end
  end
end

class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|

		t.integer :my_id
		t.integer :user_id
		t.integer :about_id
		t.boolean :poll_check, :default => 3, :null => false
      t.timestamps
    end
  end
end

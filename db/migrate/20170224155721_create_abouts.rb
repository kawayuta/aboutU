class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|

		t.integer :my_id
		t.integer :user_id
		t.integer :about_id, :default =>0
		t.boolean :poll_check, :default => false, :null => false
      t.timestamps
    end
  end
end

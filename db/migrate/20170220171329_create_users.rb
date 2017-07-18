class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.text :lovemessage
    	t.string :line
      t.timestamps
    end
  end
end

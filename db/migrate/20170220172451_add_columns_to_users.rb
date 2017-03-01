class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :nickname, :string
    add_column :users, :username,  :string, unique: true
    
   add_column :users, :followees_count, :integer, :default => 0
   add_column :users, :followers_count, :integer, :default => 0
    
  end
end

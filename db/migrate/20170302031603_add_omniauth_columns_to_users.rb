class AddOmniauthColumnsToUsers < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :username,  :string, unique: true
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :token, :string
    add_column :users, :secret, :string
    
  end
end

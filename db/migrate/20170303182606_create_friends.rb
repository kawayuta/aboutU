class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :my_user_id
      t.string :friend_name
      t.string :friend_name_u
      t.boolean :friend_check
      t.string :friend_id
      t.string :friend_avatar 
      t.timestamps
    end
  end
end

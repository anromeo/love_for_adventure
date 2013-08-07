class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :requestor_id
      t.integer :friend_id
      t.integer :approval, default: 0

      t.timestamps
    end
  end
end

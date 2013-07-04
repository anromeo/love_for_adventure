class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :follower
      t.integer :following
      t.integer :approve

      t.timestamps
    end
  end
end

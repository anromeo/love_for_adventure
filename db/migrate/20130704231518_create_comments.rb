class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :comment
      t.string :cthing_type
      t.integer :cthing_id

      t.timestamps
    end
  end
end

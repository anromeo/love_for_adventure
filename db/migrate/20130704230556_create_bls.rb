class CreateBls < ActiveRecord::Migration
  def change
    create_table :bls do |t|
      t.integer :user_id
      t.string :item
      t.integer :rank
      t.integer :mem_id

      t.timestamps
    end
  end
end

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :mem_id
      t.integer :user_id

      t.timestamps
    end
  end
end

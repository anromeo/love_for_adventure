class CreateTableUsersMems < ActiveRecord::Migration
  def change
    create_table :users_mems, :id => false do |t|
      t.integer :mem_id, :user_id
    end
  end
end

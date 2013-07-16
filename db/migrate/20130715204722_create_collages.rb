class CreateCollages < ActiveRecord::Migration
  def change
    create_table :collages do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :layout

      t.timestamps
    end
  end
end

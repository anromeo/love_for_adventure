class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, default: "My Pic"
      t.integer :mem_id, :user_id

      t.timestamps
    end
  end
end

class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, default: "My Pic"
      t.integer :memid, :userid

      t.timestamps
    end
  end
end

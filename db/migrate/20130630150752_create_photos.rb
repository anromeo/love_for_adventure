class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, default: "My Pic"

      t.timestamps
    end
  end
end

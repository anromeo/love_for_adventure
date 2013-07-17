class CreateCollagePics < ActiveRecord::Migration
  def change
    create_table :collage_pics do |t|
      t.string :name
      t.integer :position
      t.integer :left
      t.integer :right
      t.integer :top
      t.integer :bottom
      t.string :rotation
      t.integer :collage_id

      t.timestamps
    end
    add_index :collage_pics, :rotation
  end
end

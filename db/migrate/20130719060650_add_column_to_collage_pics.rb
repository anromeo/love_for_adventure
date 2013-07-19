class AddColumnToCollagePics < ActiveRecord::Migration
  def change
    add_column :collage_pics, :photo_id, :integer
  end
end

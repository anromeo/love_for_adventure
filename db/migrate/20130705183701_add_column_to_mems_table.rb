class AddColumnToMemsTable < ActiveRecord::Migration
  def change
    add_column :mems, :user_id, :integer
  end
end

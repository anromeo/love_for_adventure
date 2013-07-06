class AddColumnToFollowers < ActiveRecord::Migration
  def change
    add_column :followers, :leader, :integer
    remove_column :followers, :following
  end
end

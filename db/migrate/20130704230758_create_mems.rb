class CreateMems < ActiveRecord::Migration
  def change
    create_table :mems do |t|
      t.string :title
      t.text :memory

      t.timestamps
    end
  end
end

class CreateInviteRequests < ActiveRecord::Migration
  def change
    create_table :invite_requests do |t|
      t.string :email
      t.boolean :invite_sent, default: false

      t.timestamps
    end
  end
end

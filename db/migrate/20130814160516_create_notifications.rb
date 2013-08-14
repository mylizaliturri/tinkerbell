class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :msg
      t.time :timevalid

      t.timestamps
    end
  end
end

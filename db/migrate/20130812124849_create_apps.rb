class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :codigo

      t.timestamps
    end
  end
end

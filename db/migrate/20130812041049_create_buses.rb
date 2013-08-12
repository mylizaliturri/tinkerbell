class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :codigo

      t.timestamps
    end
  end
end

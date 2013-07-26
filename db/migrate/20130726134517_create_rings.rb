class CreateRings < ActiveRecord::Migration
    def change
    create_table :rings do |t|
      t.string :description
      t.string :name
      t.datetime :time
      t.timestamps
    end
  end
end

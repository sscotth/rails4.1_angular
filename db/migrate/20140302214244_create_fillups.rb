class CreateFillups < ActiveRecord::Migration
  def change
    create_table :fillups do |t|
      t.decimal :odometer, :precision => 8, :scale => 1
      t.decimal :price, :precision => 5, :scale => 3
      t.decimal :volume, :precision => 5, :scale => 3
      t.datetime :date
      t.boolean :missed
      t.boolean :partial

      t.timestamps
    end

    add_index :fillups, :odometer, unique: true
  end
end

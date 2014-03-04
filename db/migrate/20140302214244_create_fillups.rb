class CreateFillups < ActiveRecord::Migration
  def change
    create_table :fillups do |t|
      t.decimal :odometer, :precision => 8, :scale => 1, null: false
      t.decimal :price, :precision => 5, :scale => 3, null: false
      t.decimal :volume, :precision => 5, :scale => 3, null: false
      t.datetime :date, default: Time.now, null: false
      t.boolean :missed, default: false
      t.boolean :partial, default: false

      t.timestamps
    end

    add_index :fillups, :odometer, unique: true
  end
end

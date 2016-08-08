class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :house_number

      t.timestamps null: false
    end
  end
end

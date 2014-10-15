class CreateBorders < ActiveRecord::Migration
  def change
    create_table :borders do |t|
      t.integer :bordering_id, :null => false
      t.integer :bordered_id, :null => false

      t.timestamps
    end

    add_index :borders, [:bordering_id, :bordered_id], :unique => true
  end
end

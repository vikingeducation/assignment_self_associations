class Maulings < ActiveRecord::Migration[5.0]
  def change
    create_table :maulings do |t|
      t.integer :mauler_id, :null => false
      t.integer :maulee_id, :null => false

      t.timestamps
    end
    add_index :maulings, [:mauler_id, :maulee_id], :unique => true
  end
end

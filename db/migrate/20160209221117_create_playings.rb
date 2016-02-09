class CreatePlayings < ActiveRecord::Migration
  def change
    create_table :playings do |t|
      t.integer :playee_id, null: false
      t.integer :player_id, null: false

      t.timestamps null: false
    end

    add_index :playings, [:playee_id, :player_id], :unique => true
  end
end

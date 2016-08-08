class CreateNeighborings < ActiveRecord::Migration
  def change
    create_table :neighborings do |t|
      t.integer :neighbor_id    # initiator
      t.integer :neighboree_id  # receiver

      t.timestamps null: false
    end
    add_index :neighborings, [:neighbor_id, :neighboree_id], :unique => true
  end
end

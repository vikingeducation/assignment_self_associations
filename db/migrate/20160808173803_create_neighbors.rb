class CreateNeighbors < ActiveRecord::Migration[5.0]
  def change
    create_table :neighbors do |t|
      t.integer :neighbor_to
      t.integer :neighbor_of

      t.timestamps
    end
    add_index :neighbors, [:neighbor_to, :neighbor_of], :unique => true
  end
end

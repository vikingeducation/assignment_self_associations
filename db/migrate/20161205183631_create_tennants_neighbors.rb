class CreateTennantsNeighbors < ActiveRecord::Migration[5.0]
  def change
    create_table :tennants_neighbors do |t|
      t.integer :resident_id
      t.integer :neighbor_id

      t.timestamps
    end
  end
end

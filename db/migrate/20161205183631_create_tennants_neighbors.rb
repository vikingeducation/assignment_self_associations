class CreateTennantsNeighbors < ActiveRecord::Migration[5.0]
  def change
    create_table :tennants_neighbors do |t|
      t.references :resident, foreign_key: true
      t.references :neighbor, foreign_key: true

      t.timestamps
    end
  end
end

class RenameNeighborsToNeighborTennants < ActiveRecord::Migration[5.0]
  def change
    rename_table :neighbors, :tennants_neighbors
  end
end

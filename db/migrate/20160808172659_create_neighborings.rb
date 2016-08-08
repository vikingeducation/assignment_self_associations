class CreateNeighborings < ActiveRecord::Migration
  def change
    create_table :neighborings do |t|

      t.timestamps null: false
    end
  end
end

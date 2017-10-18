class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.integer :origin_id, :null => false
      t.integer :destination_id, :null => false
      
      t.timestamps
    end
    add_index :journeys, [:origin_id, :destination_id], :unique => true
  end
end

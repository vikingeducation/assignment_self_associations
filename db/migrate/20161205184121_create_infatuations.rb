class CreateInfatuations < ActiveRecord::Migration[5.0]
  def change
    create_table :infatuations do |t|
      t.integer :admirer_id, :foreign_key => true
      t.integer :crush_id, :foreign_key => true

      t.timestamps
    end
    add_index :infatuations, [:admirer_id, :crush_id], :unique => true
  end

end

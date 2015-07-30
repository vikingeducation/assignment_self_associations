class CreateTreatings < ActiveRecord::Migration
  def change

    create_table :treatings do |t|

      t.integer :patient_id, :null => false
      t.integer :physician_id, :null => false

      t.timestamps null: false
    end

    add_index :treatings, [:patient_id, :physician_id], :unique => true
  end
end

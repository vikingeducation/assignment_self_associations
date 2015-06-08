class CreateApprenticeships < ActiveRecord::Migration
  def change
    create_table :apprenticeships do |t|
      t.integer :master_id, null: false
      t.integer :apprentice_id, null: false

      t.timestamps null: false
    end
    add_index :apprenticeships, [:master_id, :apprentice_id], unique: true
  end
end

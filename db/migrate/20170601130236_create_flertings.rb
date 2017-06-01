class CreateFlertings < ActiveRecord::Migration[5.0]
  def change
    create_table :flertings do |t|
      t.integer :flerter_id, :null => false
      t.integer :flertee_id, :null => false

      t.timestamps
    end

    add_index :flertings, [:flerter_id, :flertee_id], :unique => true
  end
end

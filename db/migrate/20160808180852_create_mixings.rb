class CreateMixings < ActiveRecord::Migration[5.0]
  def change
    create_table :mixings do |t|
      t.integer :primary_color_id, foreign_key: true, null: false
      t.integer :secondary_color_id, foreign_key: true, null: false

      t.timestamps
    end

    add_index :mixings, [:primary_color_id, :secondary_color_id], unique: true
  end
end

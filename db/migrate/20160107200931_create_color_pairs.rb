class CreateColorPairs < ActiveRecord::Migration
  def change
    create_table :color_pairs do |t|
      t.integer :base_id, null: false
      t.integer :accent_id, null: false

      t.timestamps null: false
    end

    add_index :color_pairs, [:base_id, :accent_id], unique: true
  end
end

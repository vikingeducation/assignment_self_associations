class CreateBarkings < ActiveRecord::Migration[5.1]
  def change
    create_table :barkings do |t|
      t.integer :barker_id, null: false
      t.integer :barkee_id, null: false

      t.timestamps
    end

    add_index :barkings, [:barker_id, :barkee_id], unique: true
  end
end

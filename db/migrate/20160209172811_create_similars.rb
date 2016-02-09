class CreateSimilars < ActiveRecord::Migration
  def change
    create_table :similars do |t|
      t.integer :similar_id, null: false
      t.integer :similarity_id, null: false

      t.timestamps null: false
    end
    add_index :similars, 
              [:similar_id, :similarity_id],
              unique: true
  end
end

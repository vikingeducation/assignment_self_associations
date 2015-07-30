class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winner_id, null: false
      t.integer :loser_id, null: false

      t.timestamps null: false
    end
    add_index :matches, [:winner_id, :loser_id], :unique => true
  end
end

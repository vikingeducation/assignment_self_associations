class CreateDevourments < ActiveRecord::Migration
  def change
    create_table :devourments do |t|

      t.integer :devourer_id, null: false
      t.integer :devouree_id, null: false

      t.timestamps
    end

    add_index :devourments, [:devourer_id, :devouree_id], unique: true
  end
end

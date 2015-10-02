class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      
      t.integer :follow_id, :null => false
      t.integer :follower_id, :null => false
      
      t.timestamps null: false
    end
    
    add_index :links, [:follow_id, :follower_id], :unique => true
  end
end

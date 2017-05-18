class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :acceptor_id, :null => false
      t.integer :sender_id, :null => false

      t.timestamps
    end

    add_index :followings, :acceptor_id, :unique => true
    add_index :followings, :sender_id, :unique => true
  end
end

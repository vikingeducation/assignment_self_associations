class CreateEmails < ActiveRecord::Migration
	# This is the join table for our self-reflexive Emailing relationship
  def change
    create_table :emails do |t|
    	t.integer :sender_id, :null => false
      t.integer :recipient_id, :null => false

      t.timestamps null: false
    end

    add_index :emails, [:sender_id, :recipient_id], :unique => true
  end
end

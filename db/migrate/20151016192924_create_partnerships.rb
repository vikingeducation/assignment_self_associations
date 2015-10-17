class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :sender_id, :null => false
      t.integer :receiver_id, :null => false

      t.index [:sender_id, :receiver_id],
              :unique => true

      t.timestamps null: false
    end
  end
end

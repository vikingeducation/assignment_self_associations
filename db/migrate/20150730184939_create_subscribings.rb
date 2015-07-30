class CreateSubscribings < ActiveRecord::Migration
  def change
    create_table :subscribings do |t|
      t.integer :subscriber_initiator_id
      t.integer :subscriber_receiver_id

      t.timestamps null: false
    end
  end
end

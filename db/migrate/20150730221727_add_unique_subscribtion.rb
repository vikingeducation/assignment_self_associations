class AddUniqueSubscribtion < ActiveRecord::Migration
  def change
    rename_column :subscribings, :subscriber_initiator_id, :initiator_id
     rename_column :subscribings, :subscriber_receiver_id, :receiver_id

    add_index :subscribings, [:initiator_id, :receiver_id], :unique => true
 
      
  end
end

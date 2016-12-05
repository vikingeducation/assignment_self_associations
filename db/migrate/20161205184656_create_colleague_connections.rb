class CreateColleagueConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :colleague_connections do |t|
      t.integer :invitor_id
      t.integer :invitee_id

      t.timestamps
    end
  add_index :colleague_connections, [:invitor_id, :invitee_id], :unique => true

  end
end

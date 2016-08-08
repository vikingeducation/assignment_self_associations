class CreateDirectConnections < ActiveRecord::Migration
  def change
    create_table :direct_connections do |t|
      t.integer :departure, :null => false
      t.integer :arrival, :null => false

      t.timestamps null: false
    end

    add_index :direct_connections, [:departure, :arrival], :unique => true
  end
end

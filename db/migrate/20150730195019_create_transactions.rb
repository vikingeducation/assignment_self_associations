class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|

      t.integer :buyer_id, :null => false
      t.integer :seller_id, :null => false
      t.integer :quantity

      t.timestamps
    end

    add_index :transactions, [:buyer_id, :seller_id], :unique => true
  end
end
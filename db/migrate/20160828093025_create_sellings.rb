class CreateSellings < ActiveRecord::Migration[5.0]
  def change
    create_table :sellings do |t|
      t.integer :buyer_id, index: true
      t.integer :seller_id, index: true

      t.timestamps
    end
  end
end

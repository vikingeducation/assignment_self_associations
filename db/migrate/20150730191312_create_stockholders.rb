class CreateStockholders < ActiveRecord::Migration
  def change
    create_table :stockholders do |t|
      t.string :name
      t.integer :num_of_shares

      t.timestamps null: false
    end
  end
end

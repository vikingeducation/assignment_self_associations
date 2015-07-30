class CreateStockholders < ActiveRecord::Migration
  def change
    create_table :stockholders do |t|

      t.timestamps null: false
    end
  end
end

class CreateSubscribings < ActiveRecord::Migration
  def change
    create_table :subscribings do |t|

      t.timestamps null: false
    end
  end
end

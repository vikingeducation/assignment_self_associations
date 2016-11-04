class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :departure_id, :null => false
      t.integer :arrival_id, :null => false

      t.timestamps
    end
  end
end

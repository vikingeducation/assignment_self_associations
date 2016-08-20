class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end

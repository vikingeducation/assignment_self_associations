class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.references :origin
      t.references :destination

      t.timestamps null: false
    end
  end
end

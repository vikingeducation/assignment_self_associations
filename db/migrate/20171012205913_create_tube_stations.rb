class CreateTubeStations < ActiveRecord::Migration[5.0]
  def change
    create_table :tube_stations do |t|
      t.string :name
      t.string :accessibility
      t.integer :no_of_exits

      t.timestamps
    end
  end
end

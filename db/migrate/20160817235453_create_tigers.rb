class CreateTigers < ActiveRecord::Migration[5.0]
  def change
    create_table :tigers do |t|
      

      t.timestamps
    end
  end
end

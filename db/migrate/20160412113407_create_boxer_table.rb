class CreateBoxerTable < ActiveRecord::Migration
  def change
    create_table :boxer do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end

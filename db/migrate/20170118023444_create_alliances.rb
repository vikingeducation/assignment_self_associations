class CreateAlliances < ActiveRecord::Migration[5.0]
  def change
    create_table :alliances do |t|
      t.integer :allier_id, null: false
      t.integer :allied_id, null: false

      t.timestamps
    end
  end
end

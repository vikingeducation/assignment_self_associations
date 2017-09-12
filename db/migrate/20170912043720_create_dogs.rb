class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.text :name, null: false
      t.text :breed, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end

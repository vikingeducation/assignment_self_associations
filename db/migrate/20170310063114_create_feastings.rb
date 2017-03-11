class CreateFeastings < ActiveRecord::Migration[5.0]
  def change
    create_table :feastings do |t|
      t.references :prey, foreign_key: true
      t.references :predator, foreign_key: true

      t.timestamps
    end
  end
end

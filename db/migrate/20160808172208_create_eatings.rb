class CreateEatings < ActiveRecord::Migration
  def change
    create_table :eatings do |t|

      t.integer :prey_id
      t.integer :predator_id

      t.timestamps null: false
    end
  end
end

class CreateDogFights < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_fights do |t|
      t.integer :attacker_id
      t.integer :attacked_id

      t.timestamps
    end
  end
end

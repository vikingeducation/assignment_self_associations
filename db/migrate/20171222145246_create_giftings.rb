class CreateGiftings < ActiveRecord::Migration[5.1]

  def change
    create_table :giftings do |t|
      t.integer :giver_id
      t.integer :recipient_id

      t.timestamps
    end
    add_index :giftings, [:giver_id, :recipient_id], unique: true

  end

end

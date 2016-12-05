class CreateStarFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :star_fighters do |t|
      t.string :ship_class
      t.string :call_sign

      t.timestamps
    end
  end
end

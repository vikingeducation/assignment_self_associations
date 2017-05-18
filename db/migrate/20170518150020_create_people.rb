class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name, :null => true, :unique => true
      t.string :age, :null => true
      t.string :occupation, :null => true

      t.timestamps
    end
  end
end

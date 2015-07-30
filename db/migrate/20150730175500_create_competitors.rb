class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.integer :seeding

      t.timestamps null: false
    end
  end
end

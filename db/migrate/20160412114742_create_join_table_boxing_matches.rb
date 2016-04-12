class CreateJoinTableBoxingMatches < ActiveRecord::Migration
  def change
    create_table :boxing_matches do |t|
      t.integer :champion_id, :null => false
      t.integer :challenger_id, :null => false

      t.timestamps
    end

    add_index :boxing_matches, [:champion_id,:challenger_id], :unique => true
  end
end

class CreateSongRelations < ActiveRecord::Migration
  def change
    create_table :song_relations do |t|
      t.integer :song_id, :null => false
      t.integer :relation_id, :null => false
      t.timestamps null: false
    end

    add_index :song_relations, [:song_id, :relation_id], :unique => true
  end
end

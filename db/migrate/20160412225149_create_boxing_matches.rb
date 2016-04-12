class CreateBoxingMatches < ActiveRecord::Migration
  def change
    create_table :boxing_matches do |t|

      t.timestamps null: false
    end
  end
end

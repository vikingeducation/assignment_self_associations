class CreateMentorships < ActiveRecord::Migration[5.1]
  def change
    create_table :mentorships do |t|
      t.integer :mentee_id, null: false
      t.integer :mentor_id, null: false

      t.timestamps
    end

    add_index :mentorships, [:mentee_id, :mentor_id], unique: true
  end
end

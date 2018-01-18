class CreateMentorsMentees < ActiveRecord::Migration[5.0]
  def change
    create_table :mentors_mentees do |t|
      t.integer :mentor_id
      t.integer :mentee_id

      t.timestamps
    end
    add_index :mentors_mentees, [:mentor_id, :mentee_id], unique: true
  end
end

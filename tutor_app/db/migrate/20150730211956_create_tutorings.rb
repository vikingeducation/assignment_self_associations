class CreateTutorings < ActiveRecord::Migration
  def change
    create_table :tutorings do |t|
      t.integer :tutor_id
      t.integer :learner_id

      t.timestamps null: false
    end
  end

  # add_index :tutorings, [:tutor_id, :learner_id], :unique => true 
end

class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :student_id, null: false
      t.integer :teacher_id, null: false

      t.timestamps null: false
    end

    add_index :enrollments, [:student_id, :teacher_id], unique: true
  end
end

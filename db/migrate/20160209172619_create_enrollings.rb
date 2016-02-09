class CreateEnrollings < ActiveRecord::Migration
  def change
    create_table :enrollings do |t|
      t.integer :enroller_id
      t.integer :professor_id
      t.timestamps null: false
    end
    add_index :enrollings, [:enroller_id, :professor_id], unique: true
  end
end

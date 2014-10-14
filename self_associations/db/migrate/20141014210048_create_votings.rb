class CreateVotings < ActiveRecord::Migration
  def change
    create_table :votings do |t|
      t.integer :voter_id
      t.string :recipient_id
      t.string :integer

      t.timestamps
    end
  end
end

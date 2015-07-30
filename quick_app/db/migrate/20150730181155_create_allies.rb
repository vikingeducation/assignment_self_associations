class CreateAllies < ActiveRecord::Migration
  def change
    create_table :allies do |t|
      t.integer :ally_intiator_id
      t.integer :ally_acceptor_id

      t.timestamps null: false
    end
  end
end

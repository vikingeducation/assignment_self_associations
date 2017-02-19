class CreateReferencings < ActiveRecord::Migration[5.0]
  def change
    create_table :referencings do |t|

    	t.integer :paper_id, :null => false
      	t.integer :reference_paper_id, :null => false

      	t.timestamps
    end
    add_index :referencings, [:paper_id, :reference_paper_id], :unique => true
  end
end

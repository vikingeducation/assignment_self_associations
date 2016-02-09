class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer     :lender_id
      t.integer     :borrower_id
      t.float         :loan_amount
      t.float         :interest_rate
      t.datetime      :loan_due_date
      t.timestamps null: false
    end

    add_index :loans, [:lender_id, :borrower_id]
  end
end

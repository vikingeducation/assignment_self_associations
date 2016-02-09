class Loan < ActiveRecord::Base

  belongs_to :lender, foreign_key: :lender_id, class_name: "User"
  belongs_to :borrower, foreign_key: :borrower_id, class_name: "User"

  #validates :lender_id, :uniqueness => { :scope => :borrower_id }

end

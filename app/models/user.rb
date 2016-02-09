class User < ActiveRecord::Base
  has_many :credits, class_name: "Loan", foreign_key: :lender_id, dependent: :destroy
  has_many :debtors, through: :credits, source: :borrower

  has_many :debts, class_name: "Loan", foreign_key: :borrower_id, dependent: :nullify
  has_many :creditors, through: :debts, source: :lender
end



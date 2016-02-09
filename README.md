assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...


John and Deepa

######
Data Model
#######


User
has_many: credits, class_name: "Loan", foreign_key: :lender_id
has_many: debtors, through: :credits, source: borrower


has_many: debts, class_name: "Loans", foreign_key: :borrower_id
has_many: creditors, through: :debts, source: :lender


##########

Loan
belongs_to :lender, foreign_key: :lender_id, class_name: "User"
belongs_to :borrower, foreign_key: :borrower_id, class_name: "User"

##################


models

User
    id
    non-association stuff
Loan
    lender_id
    borrower_id






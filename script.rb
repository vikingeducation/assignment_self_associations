ul = User.last
ul.debtors
ul.creditors
ul.credits 
ul.debts

Loan.first.borrower
Loan.first.lender

ul.debtors << User.find(5)
   

User.fifth.creditors.delete_all
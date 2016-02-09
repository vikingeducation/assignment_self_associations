# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# You'll see little puts statements in the file to give you status updates as the file runs.
puts "Destroying old records"

# Blow away all the existing records every time.

User.destroy_all
Loan.destroy_all


puts "Old records destroyed"

puts "Creating Seed..."

User.create(name: "John Doe")
User.create(name: "Jane Doe")
User.create(name: "Maggie Smith")
User.create(name: "Harry Potter")
User.create(name: "Richard Marx")
User.create(name: "Jerry Richards")
User.create(name: "Dom Pon")
User.create(name: "Elvia Angel")
User.create(name: "Mary Richards")
User.create(name: "Helen Troy")

Loan.create(lender_id: 5, borrower_id: 1)
Loan.create(lender_id: 5, borrower_id: 4)
Loan.create(lender_id: 4, borrower_id: 8)
Loan.create(lender_id: 4, borrower_id: 10)
Loan.create(lender_id: 5, borrower_id: 9)
Loan.create(lender_id: 6, borrower_id: 7)
Loan.create(lender_id: 7, borrower_id: 6)
Loan.create(lender_id: 6, borrower_id: 10)
Loan.create(lender_id: 10, borrower_id: 1)
Loan.create(lender_id: 10, borrower_id: 3)

puts "Created Seed..."
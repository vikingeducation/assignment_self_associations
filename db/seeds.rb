# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying old records"

Person.destroy_all
Following.destroy_all

puts "Old records destroyed"


MULTIPLIER = 10


def generate_person
  u = Person.new
  u[:name]  = Faker::Name.first_name
  u[:age]   = rand(18..60)
  u[:occupation] = Faker::Job.title
  u.save
end


(MULTIPLIER*50).times { generate_person }
puts "Created persons"


@test_persons = Person.limit(5).order("RANDOM()").pluck(:id)

def generate_join_table
  f = Following.new
  f.acceptor_id = @test_persons.pop
  f.sender_id = @test_persons.pop
  f.save
end

# Create orders and add the credit card records.
(MULTIPLIER*20).times { generate_join_table}
puts "Created join table"


puts "DONE!"

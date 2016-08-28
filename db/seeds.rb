# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all old data..."

Person.destroy_all
Selling.destroy_all

puts "old data destroyed."

puts "creating people.."
20.times do
  p = Person.new
  p[:name] = Faker::Name.name
  p.save!
end
puts "people created."

puts "creating relationship..."
100.times do
  stack = Person.pluck(:id).shuffle
  r = Selling.new
  r[:buyer_id] = stack.pop
  r[:seller_id] = stack.pop
  r.save
end
puts "relationship created."
puts "Done"

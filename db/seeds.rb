# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Homeowner.destroy_all
Neighbor.destroy_all


50.times do
  Homeowner.create(name: Faker::Name.name)
end

20.times do
  first = Homeowner.all.sample
  second = Homeowner.all.sample
  first.neighboring_homeowners << second unless first == second
  second.neighboring_homeowners << first unless first == second
end

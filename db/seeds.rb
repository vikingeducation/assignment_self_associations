# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Feasting.destroy_all
Animal.destroy_all


puts "Creating animals..."
50.times do
  Animal.create(name: Faker::Pokemon.name)
end

puts "Creating feastings..."

100.times do
  prey = Animal.all.pluck(:id).sample
  predator = Animal.all.pluck(:id).sample
  if prey != predator
    Feasting.create(prey_id: prey, predator_id: predator)
  end
end

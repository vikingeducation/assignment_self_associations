# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying database."

Team.destroy_all
Game.destroy_all

MULTIPLIER = 10

puts "Creating Teams"

MULTIPLIER.times do
  name = Faker::Team.name
  Team.create(name: name) unless Team.pluck(:name).include? name
end

puts "Adding visiting_opponents"

Team.all.each do |team|
  MULTIPLIER.times do
    visitor = Team.all.sample
    team.visiting_opponents << visitor unless visitor == team
  end
end

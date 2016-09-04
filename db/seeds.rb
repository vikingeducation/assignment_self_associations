# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Destroying homes"
House.destroy_all
Neighboring.destroy_all

puts "Building homes ......."
30.times do |i|
  House.create(name:"I am house #{i}", house_number: i)
end

puts "Getting neighbors by adding to collection neighbors"
houses = House.all
29.times do |i|
  house = houses[i]
  house.neighbors << houses[i + 1]
end

puts "Getting additional neighbors (annoying types)"
5.times do |i|
  house = houses[i + 5]
  house.houses_neighbored_by << houses[-(i + 5 + 1)]
end

puts "donezo"

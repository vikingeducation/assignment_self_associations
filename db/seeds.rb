# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


30.times do |i|
  House.create(name:"I am house #{i}", house_number: i)
end

houses = House.all
5.times do |i|
  house = houses.first
  house.neighbors << houses[i + 1]
end



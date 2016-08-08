# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "building animals"
Animal.create!(:name => "Wolf")
Animal.create!(:name => "Hawk")
Animal.create!(:name => "Rat")

puts "building relationships"
Animal.find_by(name: "Wolf").preys << Animal.find_by(:name => "Hawk")

Animal.find_by(name: "Wolf").preys << Animal.find_by(:name => "Rat")

Animal.find_by(name: "Hawk").preys << Animal.find_by(:name => "Rat")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying old records"

#Blow away all the existing records every time.

Boxer.destroy_all
BoxingMatch.destroy_all

puts "Old records destroyed"

MULTIPLIER = 100

def generate_names
  boxer = Boxer.new
  boxer[:name] = Faker::Name.name
  boxer.save
end

def generate_matches
  match = BoxingMatch.new
  match[:champion_id] = Boxer.pluck(:id).sample
  match[:challenger_id] = Boxer.pluck(:id).sample
  until match[:champion_id] != match[:challenger_id]
    match[:challenger_id] = Boxer.pluck(:id).sample
  end
  match.save
end

MULTIPLIER.times { generate_names }
MULTIPLIER.times { generate_matches }

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


KINDS = ["bug", "predatory_lizard", "scavenger", "vulture", "carnivorous_human", "wolf", "domesticated_attack_kitty", "humongous_cave_bat"]


40.times do
  name = "#{Faker::Name.prefix} #{Faker::Name.first_name}"
  a = Animal.new
  a.kind = KINDS.sample
  a.name = name
  a.save
end

40.times do
  d = Devourment.new
  d.devourer_id = rand(40) + 1
  d.devouree_id = rand(40) + 1
  d.save
end
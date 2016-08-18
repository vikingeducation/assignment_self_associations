# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tiger.destroy_all
Mauling.destroy_all

puts "Old records destroyed"


10.times do
  Tiger.new.save
end
puts "new tigers created"
5.times do
  pair = Tiger.all.sample(2)
  pair[0].maulers << pair[1]
end

puts "new maulers"
5.times do
  pair = Tiger.all.sample(2)
  pair[0].maulees << pair[1] unless pair[0].maulees.include?(pair[1])
end
 puts "new maulees"

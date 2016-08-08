# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Connection.destroy_all
Computer.destroy_all


25.times do 
  Computer.create!(:name => Faker::Pokemon.name)
end

Computer.all.each do |comp|
  (0..4).to_a.sample.times do
    to_add = Computer.all.sample 
    comp.servers <<  to_add if to_add.id != comp.id
  end
  
  (0..4).to_a.sample.times do
    to_add = Computer.all.sample 
    comp.users <<  to_add if to_add.id != comp.id
  end

  comp.save
end


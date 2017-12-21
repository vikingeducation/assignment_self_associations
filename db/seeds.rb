# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shirley = Employee.create!(name: 'Shirley', role: 'manager', manager_id: nil)
Employee.create!(name: 'Loki', role: 'emotional support', manager_id: shirley.id)
Employee.create!(name: 'Thor', role: 'string duty', manager_id: shirley.id)
nancylee = Employee.create!(name: 'Nancy Lee', role: 'string duty', manager_id: nil)
Employee.create!(name: 'Alex', role: 'guard', manager_id: nancylee.id)


papa = Employee.create!(name: 'Papa Smurf')
Employee.create!(name: 'Hefty Smurf', manager_id: papa.id)
Employee.create!(name: 'Vanity Smurf', manager_id: papa.id)
Employee.create!(name: 'Smurfette', manager_id: papa.id)

gmel = Employee.create!(name: 'Gargamel')
Employee.create!(name: 'Azrael', manager_id: gmel.id)






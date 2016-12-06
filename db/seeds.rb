# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NUM = 100

"Adding Pro's"
NUM.times do
  Professional.create(name:  Faker::Name.name,
                      email: Faker::Internet.email)
end

"Adding Connections"

# 15.times do |i|
#   Professional.find(i+1).connected_colleagues << Professional.find(i+2)
# end
#
# 15.times do |i|
#   Professional.find(i+1).connections_received << Professional.find(i+2)
# end

NUM.times do |n|
  invitor = (Professional.first.id..Professional.last.id).sample
  invitee = (Professional.first.id..Professional.last.id).sample
  
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BusStop.destroy_all
Route.destroy_all



def random_stop_id
  BusStop.all.sample.id
end

40.times do 
  BusStop.create(name: Faker::Name.name)
end



80.times do 
  Route.create(origin_id: random_stop_id, destination_id: random_stop_id)
end
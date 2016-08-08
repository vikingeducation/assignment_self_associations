# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BusStop.destroy_all
BusRoute.destroy_all

50.times do
  BusStop.create(name: Faker::Address.street_name)
end


10.times do
  random_origin = BusStop.all.sample

  begin
    random_destination = BusStop.all.sample
  end until random_destination != random_origin

  BusRoute.create(origin: random_origin, destination: random_destination)
end



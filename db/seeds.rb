# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "delete old data"
TubeStation.delete_all
Journey.delete_all

puts "creating tube array"

tube_names = [
  "Acton Town",
  "Aldgate",
  "Aldgate East",
  "Alperton",
  "Barbican",
  "Barking",
  "Becontree",
  "Buckhurst Hill",
  "Burnt Oak",
  "Caledonian Road",
  "Clapham Common",
  "Covent Garden",
  "Croxley",
  "Dagenham Heathway",
  "Debden",
  "Dollis Hill",
  "Ealing Broadway",
  "Ealing Common",
  "Earl\"s Court",
  "East Acton"]

puts "creating tube stations"

20.times do |i|
  t = TubeStation.create(:name => tube_names[i],
                  :accessibility => ["Y", "N"].sample,
                  :no_of_exits => [1,2,3,4,5].sample)
end


puts "creating journeys"
30.times do
  Journey.create(:origin_id => TubeStation.all.sample.id,
                 :destination_id => TubeStation.all.sample.id
    )
end
Airport.destroy_all
Route.destroy_all
puts "Old entries destroyed."

MULTIPLIER = 10

MULTIPLIER.times do
  Airport.create(name: Faker::App.name)
end
puts "Airports created."

(MULTIPLIER * 2).times do
  Route.create(departure_id: Airport.pluck(:id).sample, arrival_id: Airport.pluck(:id).sample)
end
puts "Routes created."
puts "All done."
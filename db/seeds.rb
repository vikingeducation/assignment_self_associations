puts "Breaking Hearts"

Person.destroy_all
Infatuation.destroy_all


puts "Creating middle school class"

10.times do
  Person.create!(name: Faker::GameOfThrones.character)
end



puts "Making sparks...Generating angst"

50.times do
  Infatuation.create!(crush_id: Person.all.sample.id, admirer_id: Person.all.sample.id)
end
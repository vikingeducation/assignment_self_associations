puts 'Destroying everything...'
Country.destroy_all
Alliance.destroy_all
puts "DONE"

MULTIPLIER = 20

def get_ids
  a = Country.pluck(:id).sample
  b = Country.pluck(:id).sample until b != (a && nil)
  [a,b]
end


puts "Creating countries..."
MULTIPLIER.times do
  Country.create(name: Faker::Address.country)
end
puts "DONE"

puts "Creating alliances..."
MULTIPLIER.times do 
  ids = get_ids
  Alliance.create(
    allier_id: ids[0],
    allied_id: ids[1]
    )
end
puts "DONE"




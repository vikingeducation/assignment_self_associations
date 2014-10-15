# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Country.new({name: Faker::Address.country}).save
end

Country.all.each do |country|
  country.bordered_countries.each do |bordered|
    Border.new({bordering_id: country.id, bordered_id: bordered.id}).save
  end
  if country.id < 20
    Border.new({bordering_id: country.id, bordered_id: rand((country.id+1)..20)}).save
  end
end

#bordering is the left column, bordered is the right column
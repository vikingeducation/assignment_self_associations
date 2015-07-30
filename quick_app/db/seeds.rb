# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.destroy_all
Ally.destroy_all

50.times do 
  Country.create(name: Faker::Address.country, population: rand(1000..20000))
end


count_of_countries = Country.count
60.times do
	country1_id = Country.offset(rand(count_of_countries)).first.id
	country2_id = Country.offset(rand(count_of_countries)).first.id
	Ally.create(ally_intiator_id: country1_id, ally_acceptor_id: country2_id) if country1_id != country2_id
end




	# until country1_id != country2_id
	# 	country2_id = Country.offset(rand(count_of_countries)).first.id 
	# end
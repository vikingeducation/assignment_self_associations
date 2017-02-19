# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying old records"

# Blow away all the existing records every time.

ResearchPaper.destroy_all
Referencing.destroy_all

200.times do |index|
	a = ResearchPaper.new
	a.title = Faker::Lorem.sentence
	a.author_name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
	a.save!
end

20.times do |index|
	a = ResearchPaper.all.sample
	b = ResearchPaper.all.sample
	a.citations << b
end

puts "Done seeding the DB"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.destroy_all
20.times do
  Person.create!(name: Faker::Name.name)
end

all = Person.all.to_a
teachers = all.slice!(1..5)
teachers.each do |teacher|
  students = all.shuffle.dup
  10.times do
   teacher.students << students.pop
   teacher.save!
  end
end
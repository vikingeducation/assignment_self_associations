# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

8.times do
  Student.create(:name => Faker::Name.name)
end

5.times do 
  students = Student.all.sample(2)
  Tutoring.create(:tutor_id => students[0].id, :learner_id => students[1].id)
end
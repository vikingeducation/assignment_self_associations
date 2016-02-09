# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.delete_all
Enrolling.delete_all


# 50.times do
#   Student.create(name: Faker::Name.name)
# end


# create professors
5.times do
  Student.create(name: Faker::Name.name)
end

professors = Student.all

# create enrolled students
professors.each do |prof|
  10.times do
    student = Student.create(name: Faker::Name.name)
    Enrolling.create(enroller_id: student.id, professor_id: prof.id)
  end
end


# create professors enrolled in other professors' classes

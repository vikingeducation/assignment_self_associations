# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy all Existing data
puts "Destroying Old Data"
Student.destroy_all
puts "All Existing Data Deleted"

# Multiplier
MULTIPLIER = 100

# Create students
def create_students
  MULTIPLIER.times do |x|
    name = Faker::Simpsons.character
    student = Student.create!(
      name: name
      )
  end
  puts "Created #{MULTIPLIER} Student(s)"
end


# Generate MentorsMentee Associations
def create_mentor_associations
  10.times do |x|
    student = Student.find(Student.pluck(:id).shuffle.first)
    mentor = Student.find(Student.pluck(:id).shuffle.first)
    student.mentors << mentor
  end
end


def create_mentee_associations
  10.times do |x|
    student = Student.find(Student.pluck(:id).shuffle.first)
    mentee = Student.find(Student.pluck(:id).shuffle.first)
    student.mentees << mentee
  end
end

create_students
create_mentor_associations
create_mentee_associations
puts "Database Seed Complete"

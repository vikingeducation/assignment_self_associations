# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# pre-defined list of Dog breeds
BREEDS = ["Welsh Corgi", "Golden Retriever", "Labrador Retriever", "German Shepherd", "Poodle", "Siberian Husky" ]

# destroy all existing data
def destroy_all_data
  puts "Destroying all existing data.."
  Barking.destroy_all
  Dog.destroy_all
  puts "All existing data destroyed."
end

# creates Dog model objects
def create_dogs(num_dogs = 20)
  puts "Creating #{num_dogs} Dogs.."
  num_dogs.times do
    dog = Dog.new(name: Faker::Cat.name, breed: BREEDS.sample, age: rand(10) + 1)
    dog.save!
  end
  puts "#{num_dogs} Dogs created."
end

# sets a Dog to bark at 5 other Dogs
def create_barkees(num_barkees = 5)
  puts "Creating Barker/Barkee relationships between Dogs.."
  dogs = Dog.all
  dogs.each do |barker|
    barker.barkees << dogs.reject { |barkee| barker == barkee }.sample(num_barkees)
  end
  puts "Created Barker/Barkee relationships between Dogs."
end

puts "Starting DB seed.."
destroy_all_data
create_dogs
create_barkees
puts "DONE!"

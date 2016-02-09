# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MULTIPLIER = 1

puts 'Destroying old records'

Movie.destroy_all
Similar.destroy_all

puts 'Records destroyed.'

def create_movie
  m = Movie.new
  m[:title] = Faker::Book.title
  m.save!
end

def similar_movie_to(movie)
  similar_id = Movie.pluck(:id).sample
  movie.similar_movies << Movie.find(similar_id)
  movie.save!
end

puts 'Creating movies'

(10 * MULTIPLIER).times do
  create_movie
end

puts 'Assigning similar movies'

Movie.all.each do |movie|
  (MULTIPLIER).times do
    similar_movie_to(movie)
  end
end

puts 'Done!'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Clear all
Movie.delete_all
MovieRecommendation.delete_all



# Make a bunch of movies
50.times do |i|
  Movie.create(:title => Faker::Lorem.words(rand(1..4)).join(" ").titleize)
end




# Tie a bunch of movies together with recommendations
75.times do |i|
  base, recommendation = Movie.all.sample, Movie.all.sample
  base.recommended_movies << recommendation unless base.recommended_movies.include?(recommendation)
end


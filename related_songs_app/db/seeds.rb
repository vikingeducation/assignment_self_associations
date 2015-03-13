# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
SongRelation.destroy_all

SCHWAD = 25
x = 10
(SCHWAD * 2).times do
  Song.create(
    :title => Faker::Company.catch_phrase,
    :artist => Faker::App.name,
    :relation_id => x
    )
  x += 1
end

(SCHWAD * 8).times do
  SongRelation.create(
    :song_id => (Song.all.sample.id),
    :relation_id => (Song.all.sample.relation_id)
    )
end
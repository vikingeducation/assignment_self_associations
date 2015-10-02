# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all
Link.destroy_all

LINK_CONCLUDE = []

def person_generate
  person = Person.new
  person.name = Faker::Name.name
  person.save
end

def link_generate
  link = Link.new
  link.follow_id = Person.pluck(:id).sample
  link.follower_id = Person.pluck(:id).sample
  if(!LINK_CONCLUDE.include?([link.follow_id, link.follower_id]) && link.follow_id != link.follower_id)
    link.save
    LINK_CONCLUDE << [link.follow_id, link.follower_id]
  end
end

10.times do 
  person_generate
end

50.times do
  link_generate
end
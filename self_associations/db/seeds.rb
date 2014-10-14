# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


500.times do |i|
  User.create(
    name: Faker::Name.name)
end

  100.times do |i|
    a=User.find(rand(500)+1)
    new_user = rand(500)+1
    if new_user = a.id
      new_user = rand(500)+1
    end
    b=User.find(new_user)

    a.voted_on_users << b

  end





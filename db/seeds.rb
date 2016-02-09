# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Dog.create(name: Faker::Hipster.word)
end

20.times do
  dog_num1 = Dog.all.sample.id
  dog_num2 = Dog.all.sample.id
  if dog_num1 != dog_num2
    Playing.create(player_id: dog_num1, playee_id: dog_num2)
  end
end

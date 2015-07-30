# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_count = 10

user_count.times do
  User.create(:name => Faker::Internet.user_name)
end

User.all.each do |user|

  rand(1..2).times do

    Subscribing.create(:subscriber_initiator_id => user.id, :subscriber_receiver_id => rand(1..user_count)) 

  end
end

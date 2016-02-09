# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying Old Data"

User.destroy_all
Following.destroy_all

puts  "Old Data Successfully Deleted"

MULTIPLIER = 10

def generate_user
  u = User.new
  u.name = Faker::Name.name
  u.save
end

def generate_friending
  f = Following.new
  follower_id = User.pluck(:id).sample
  followed_id = User.pluck(:id).sample
  while Following.where("follower_id=#{follower_id}").where("followed_id=#{followed_id}")[0] && follower_id != followed_id
    follower_id = User.pluck(:id).sample
    followed_id = User.pluck(:id).sample
  end
  f.follower_id = follower_id
  f.followed_id = followed_id
  f.save
end

puts "generating User"
MULTIPLIER.times { generate_user }
puts "generating Followings"
MULTIPLIER.times { generate_friending }
puts "DONE"

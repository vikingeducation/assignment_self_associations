User.destroy_all
Following.destroy_all

10.times do
  User.create(name: Faker::Name.name)
end

user_ids = User.pluck(:id)
User.all.each do |u|
  follower_ids =  user_ids.sample(3) - [u.id]
  puts "Leader #{u.id} is followed by #{follower_ids}"
  u.follower_ids = follower_ids
end
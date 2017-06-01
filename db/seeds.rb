# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# reset
User.delete_all
Flerting.delete_all

# create users
10.times do
  User.create(:nickname => Faker::Internet.user_name)
end

# create flerts
20.times do
  begin
    user_ids = User.pluck(:id).shuffle
    # a user flirts with another
    u1, u2 = user_ids.pop, user_ids.pop
    User.find(u1).flerted_users << User.find(u2)
  # in the case the relationship already exists
  rescue ActiveRecord::RecordInvalid => e
    # notthing for now
  end
end

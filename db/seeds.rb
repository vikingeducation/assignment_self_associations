# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Stockholder.destroy_all
Transaction.destroy_all

10.times do |i| 
  Stockholder.create(:name => "Stockholder#{i}", 
                     :num_of_shares => rand(10..30))
end

9.times do |i|
  3.times do |j|
    Transaction.create(:buyer_id => i+1, 
                       :seller_id => (i+j+1)%10+1, 
                       :quantity => rand(5..10))
  end
end
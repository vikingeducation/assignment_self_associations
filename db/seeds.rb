# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

ENTRANTS = 16

# Competitors: name, seeding
ENTRANTS.times do |i|
  Competitor.create(:name => "Competitor_#{i+1}", :seeding => i+1)
end

# Matches: winner_id, loser_id

index = 1
until index == ENTRANTS
  (index+1).upto(ENTRANTS) do |i|
    competitors = [index, i].shuffle
    Match.create(:winner_id => competitors.pop, :loser_id => competitors.pop )
  end
  index += 1
end
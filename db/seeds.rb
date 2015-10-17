# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rake::Task['db:migrate:reset'].invoke

PREFIXES = [
  'Acme',
  'Widget',
  'Audio',
  'Video',
  'Paper',
  'Metal',
  'Electronics',
  'Photo',
  'Food',
  'Robot',
  'Mail'
]

SUFFIXES = [
  'Inc',
  'Corp',
  'Org',
  'Co',
  'Team',
  'Group',
  'Depot',
  'Hub',
  'Market',
  'Records',
  'International'
]

puts 'Creating businesses'
PREFIXES.each_with_index do |prefix, i|
  SUFFIXES.each_with_index do |suffix, j|
    name = "#{prefix} #{suffix}"
    Business.create(:name => name)
  end
end

puts 'Creating partnerships'
first_business_id = Business.first.id
last_business_id = Business.last.id
businesses = Business.all
businesses.each do |sender|
  (1..rand(1..5)).each do |i|
    receiver = Business.all.sample
    Partnership.create(
      :sender_id => sender.id,
      :receiver_id => receiver.id
    )
    if i.odd?
      Partnership.create(
        :sender_id => receiver.id,
        :receiver_id => sender.id
      )
    end
  end
end

puts "Done!"

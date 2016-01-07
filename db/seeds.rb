# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Color.destroy_all
ColorPair.destroy_all

colors = Color.create([{name: 'flamingo pink'}, {name: 'charcoal'}, {name: 'bright blue'}, {name: 'red hot red'}, {name: 'charcoal'}, {name: 'white'}, {name: 'black'}, {name: 'flaming orange'}, {name: 'racer yellow'}, {name: 'taupe'}, {name: 'beige'}, {name: 'vivid green'}])

60.times do
  b_id = Color.pluck(:id).sample
  a_id = Color.pluck(:id).sample
  if a_id == b_id || ColorPair.where("base_id = ? AND accent_id = ?", b_id, a_id).present?
    next
  end
  ColorPair.create(base_id: b_id, accent_id: a_id)
end

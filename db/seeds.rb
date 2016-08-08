# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
multiplier = 20

Color.destroy_all
Mixing.destroy_all

multiplier.times do |n|
  Color.create(name: Faker::Color.color_name, wavelength: (390..700).to_a.sample)
end

puts "#{multiplier} colors created"

(multiplier/2).times do |n|

  secondary_color = Color.all.sample.id
  Mixing.create(primary_color_id: (Color.all.sample.id), secondary_color_id: secondary_color)
  Mixing.create(primary_color_id: (Color.all.sample.id), secondary_color_id: secondary_color)

end

puts "Palette successfully mixed"

20.times do
  w = Wizard.new
  w.name = Faker::Name.name
  w.save!
end

20.times do
  a = Apprenticeship.new
  a.master_id = Wizard.all.sample.id
  a.apprentice_id = Wizard.all.sample.id
  a.save!
end

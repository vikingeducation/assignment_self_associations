Station.destroy_all
DirectConnection.destroy_all

def choose_another_station(station)
   station_to_add = Station.all.sample 
  until station_to_add.id != station.id
    station_to_add = Station.all.sample 
  end
  station_to_add
end

SEEDS = 20


SEEDS.times do 
    Station.create(:name => "#{Faker::Address.city} Station")
end

Station.all.each do |station|

  station.origin_stations << choose_another_station(station)

  station.destinations << choose_another_station(station)
end



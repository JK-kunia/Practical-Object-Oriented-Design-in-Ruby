# require './bicycle'
require './mountain_bike'
require './road_bike'
require './recumbent_bike'

road_bike = RoadBike.new(
  size: '10',
  type_color: 'bule'
)

mountain_bike = MountainBike.new(
  size: '10',
  front_shock: 'front',
  rear_shock: 'rear'
)
recumbent_bike = RecumbentBike.new(
  size: '10'
)

puts road_bike.spares
puts mountain_bike.spares
puts recumbent_bike.spares
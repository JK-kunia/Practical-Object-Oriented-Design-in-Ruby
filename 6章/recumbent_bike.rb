require './bicycle'

class RecumbentBike < Bicycle
  def default_chain
    '9-speed'
  end

  def default_tire_size
    '3'
  end
end
DockingStation = Class.new

class DockingStation
  attr_reader :bikes_docked

  def initialize
    @bikes_docked = []
    bike = Bike.new
    @bikes_docked << bike
  end

  def release_bike
    returned_bike = @bikes_docked[-1]
    @bikes_docked.pop
    return returned_bike
  end

  def dock(bike)
    @bikes_docked << bike
  end
end

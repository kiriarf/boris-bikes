DockingStation = Class.new

class DockingStation
  attr_accessor :bikes_docked

  def initialize
    @bikes_docked = []
    bike = Bike.new
    @bikes_docked << bike
  end

  def release_bike
    raise "There are no bikes to take out." if self.empty?
    returned_bike = @bikes_docked[-1]
    @bikes_docked.pop
    return returned_bike
  end

  def dock(bike)
    raise "Docking station full." if self.full?
    @bikes_docked << bike
  end

  private 
  def full?
    @bikes_docked.length >= 20
  end

  def empty?
    @bikes_docked.empty?
  end
end

require_relative 'Bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :bikes_docked, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes_docked = []
  end 

  def release_bike
    raise "Docking station empty." if empty?

    bikes_docked.each do |bike|
      if bike.working?
        bikes_docked.delete(bike) 
        return bike
      end
    end

    raise "All bikes broken."
  end

  def dock(bike)
    raise "Docking station full." if full?

    @bikes_docked << bike
  end

  private
  def full?
    @bikes_docked.count == DEFAULT_CAPACITY
  end

  def empty?
    @bikes_docked.count.zero?
  end
end

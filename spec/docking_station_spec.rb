require 'Docking_Station_Class'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to("release_bike") }
end

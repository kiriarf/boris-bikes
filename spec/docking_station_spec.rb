require 'classes'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  it { expect(docking_station).to respond_to("release_bike") }
  it { expect(bike).to be_an_instance_of(Bike) }
  it { expect(bike.working?).to eq(true) }
end

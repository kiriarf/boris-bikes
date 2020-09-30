require 'classes'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike

  it "bike released" do
    expect(docking_station.bikes_docked.length).to eq 0
  end

  it "bike docked" do
    docking_station.dock(bike)
    expect(docking_station.bikes_docked.length).to eq 1
    expect(docking_station.bikes_docked[0]).to be_an_instance_of Bike
  end
end

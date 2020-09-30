require 'classes'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike

  describe "bike released" do
    it { expect(docking_station.bikes_docked.length).to eq 0 }
  end

  describe "bike docked" do
    before(:all) do
      docking_station.dock(bike)
    end
    it { expect(docking_station.bikes_docked.length).to eq 1 }
    it { expect(docking_station.bikes_docked[0]).to be_an_instance_of Bike }
  end

  describe "docking station full" do
    before do
      docking_station.bikes_docked = []
      docking_station.default_capacity.times { docking_station.dock(Bike.new) }
    end
    it { expect{docking_station.dock(bike)}.to raise_error("Docking station full.") }
  end

  describe "docking station is empty" do
    before do
      docking_station.bikes_docked = []
    end
    it { expect{docking_station.release_bike}.to raise_error("There are no bikes to take out.") }
  end
end

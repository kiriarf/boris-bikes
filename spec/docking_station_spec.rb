require 'DockingStation'

describe DockingStation do
  let(:ds) {DockingStation.new}
  let(:bike) {Bike.new}
  
  it "has no bikes when initialized" do
    expect(ds.bikes_docked).to be_empty
  end

  it "can dock a bike" do
    ds.dock(bike)
    expect(ds.bikes_docked).to include(bike)
  end

  it "cannot dock a bike if full" do
    ds.capacity.times { ds.dock(bike) }
    expect {ds.dock(bike)}.to raise_error("Docking station full.")
  end

  it "can release a bike" do
    ds.dock(bike)
    ds.release_bike
    expect(ds.bikes_docked).not_to include(bike)
  end

  it "cannot release bikes if station empty" do
    expect { ds.release_bike }.to raise_error("Docking station empty.")
  end

  it "does not release broken bikes" do
    ds.dock(bike)
    bike.report_broken
    expect { ds.release_bike }.to raise_error("All bikes broken.")
  end

end

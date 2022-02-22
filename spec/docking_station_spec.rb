# commit " initialise rspec and add the first test"
require './lib/docking_station'

describe DockingStation do
  it "returns release bike" do
    expect(subject).to respond_to('release_bike')
  end
end
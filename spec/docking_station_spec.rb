# commit " initialise rspec and add the first test"
require './lib/docking_station'

describe DockingStation do
  it "returns release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gets a bike' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
end
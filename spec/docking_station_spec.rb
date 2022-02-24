# commit " initialise rspec and add the first test"
require './lib/docking_station'

describe DockingStation do
  it 'returns a "release_bike" method' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'returns an instance of the Bike class when calling release_bike method' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it 'returns a "docking_bike" method' do 
    expect(subject).to respond_to(:docking_bike)
  end

  it 'docking_bike takes a bike as an argument and returns the bike object' do
    bike = Bike.new
    expect(subject.docking_bike(bike)).to eq([bike])
  end
end

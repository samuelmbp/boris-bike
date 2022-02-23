# commit " initialise rspec and add the first test"
require './lib/docking_station'

describe DockingStation do
  it "returns release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gets and expects a bike to be workig' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it 'docks a bike' do 
    expect(subject).to respond_to(:docking_bike)
  end
end
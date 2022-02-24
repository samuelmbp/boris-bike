# commit " initialise rspec and add the first test"
require './lib/docking_station'

# context 'tests for the docking station' do
#   let(:bike) {Bike.new}

  describe DockingStation do
    it 'returns a "release_bike" method' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'returns an instance of the Bike class when calling release_bike method' do
      bike = Bike.new
      subject.docking_bike(bike)
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it 'returns a "docking_bike" method' do 
      expect(subject).to respond_to(:docking_bike)
    end

    it 'docking_bike takes a bike as an argument and returns the bike object' do
      bike = Bike.new
      expect(subject.docking_bike(bike)).to eq([bike])
    end

    it 'raises an error when release bike is called with 0 bikes' do
      expect do
        subject.release_bike
      end.to raise_error
    end

    it 'releases a bike when one bike is docked' do
      bike = Bike.new #(let acts as an instance for the bike class)
      subject.docking_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end
# end
require './lib/bike'

describe Bike do 
    it 'returns a "working?" method' do
        expect(subject).to respond_to(:working?)
    end
end
require './lib/bike'

describe Bike do 
    it 'returns working?' do
        expect(subject).to respond_to('working?')
    end
end
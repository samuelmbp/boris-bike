require './lib/bike'

class DockingStation
    attr_reader :bike
    
    def initialize
        @bike = []
    end

    def release_bike
        Bike.new
    end

    def docking_bike(bike)
        return @bike << bike
    end
end


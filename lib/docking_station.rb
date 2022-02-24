require './lib/bike'

class DockingStation
    attr_reader :bike

    def initialize
        @bike = []
    end

    def release_bike
        if @bike.empty?
            raise Exception.new 
        else
            return @bike.pop
        end
    end

    def docking_bike(bike)
        return @bike << bike
    end
end


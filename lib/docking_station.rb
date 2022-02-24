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

        if @bike.length == 1
            raise Exception.new
        else
            return @bike << bike
        end
    end
end


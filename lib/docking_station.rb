require './lib/bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        if @bikes.empty?
            raise Exception.new 
        else
            return @bikes.pop
        end
    end

    def docking_bike(bike)

        if @bikes.length >= 20
            raise Exception.new
        else
            return @bikes << bike
        end
    end
end


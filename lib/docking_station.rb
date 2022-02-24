require './lib/bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = []
        @DEFAULT_CAPACITY = 20
    end

    def release_bike
        if empty?
            raise Exception.new 
        else
            return @bikes.pop
        end
    end

    def docking_bike(bike)

        if full?
            raise Exception.new
        else
            return @bikes << bike
        end
    end

    private
    # Abstraction
    def full?
        @bikes.length >= @DEFAULT_CAPACITY ? true : false
    end

    def empty?
        @bikes.empty? ? true : false
    end
end

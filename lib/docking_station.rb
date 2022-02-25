require './lib/bike'

class DockingStation
    attr_reader :bikes

    def initialize(default_capacity = 20)
        @bikes = []
        @DEFAULT_CAPACITY = default_capacity
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

    def gives_bikes
        broken_bikes_to_be_given = []
        @bikes.each do |bike|
            if !bike.working?
                broken_bikes_to_be_given << bike
                @bikes.delete(bike)
            end

            return broken_bikes_to_be_given
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

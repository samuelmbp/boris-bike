require './lib/bike'

class DockingStation
    # attr_reader :xyz

    def release_bike
        Bike.new
    end

    def docking_bike(bike)
        return bike
    end
end

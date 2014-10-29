require "dock.rb"

  describe Docking_station do

    it "should accept bike" do
      bike = Bike.new
      station = Docking_station.new
      #expect 0 bikes
      expect(station.bike_count?).to eq(0)
      #dock bike in station
      station.dock(bike)
      #return bike to station
      station.dock(bike)
      expect(station.bike_count?).to eq(2)
    end





  end

#capacity needs to be stated
#capaity needs to decrease when bike is released
#capacity needs to increase when bike is returned


#hold the bike - NAILED ITTTTT

#release the bike WOOOhooo

#return the bike
require "dock.rb"


  describe Docking_station do

  let (:bike) {Bike.new}
  let (:station) { Docking_station.new(:capacity => 20) }

  def fill_station(station)
    20.times { station.dock(Bike.new)}
  end

    it "should accept bike" do
      bike = Bike.new
      station = Docking_station.new
      #expect 0 bikes
      expect(station.bike_count).to eq(0)
      #dock bike in station
      station.dock(bike)
      #return bike to station
      expect(station.bike_count).to eq(1)
    end

    it "should release bike" do
      station.dock(bike)
      station.release(bike)
      expect(station.bike_count).to eq(0)
    end

    it "should know when it's full" do
      fill_station station
      expect(station).to be_full
    end

    it "should not accept bike if full" do
      fill_station station
      expect( lambda{station.dock(bike)} ).to raise_error(RuntimeError)
    end

    it "should provide a list of bikes" do
      working_bike, broken_bike = Bike.new, Bike.new
      broken_bike.break!
      station.dock(working_bike)
      station.dock(broken_bike)
      expect(station.available_bikes).to eq ([working_bike])
    end




  end

#capacity needs to be stated
#capaity needs to decrease when bike is released
#capacity needs to increase when bike is returned


#hold the bike - NAILED ITTTTT

#release the bike WOOOhooo

#return the bike
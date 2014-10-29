require "dock.rb"

  describe "docking station" do

    let(:new_dock) {Dock.new}

    context "is" do

      it "holding the bike" do
        #new_dock = Dock.new
        expect(new_dock.holding_bike?).to be true
      end

      it "releases the bike" do
        #new_dock = Dock.new
        expect(new_dock.release_the_bike!).to be false
      end

      it "return the bike" do
        #new_dock = Dock.new
        expect(new_dock.return_the_bike!).to be true
      end
    end




  end

#capacity needs to be stated

#hold the bike - NAILED ITTTTT

#release the bike WOOOhooo

#return the bike
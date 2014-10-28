require 'bike.rb'

  describe Bike do

    let(:broken_bike) { Bike.new }

    before(:each) do
      broken_bike.break!
    end


    it 'is not broken when created' do
      new_bike = Bike.new
      expect(new_bike).not_to be_broken
      expect(new_bike.broken?).to be false
  end

  it 'can break' do
    broken_bike = Bike.new
  end

  it 'can be fixed' do
    broken_bike = Bike.new
    broken_bike.break!
    broken_bike.fix!
    expect(broken_bike).not_to be_broken
  end

end

#can break
#can be fixed
#can be ridden

require_relative '../lib/person.rb'

describe Person do
  it 'does not have a bike' do
    person = Person.new
    expect(person.has_bike?).to be false
  end

  it 'does have a bike' do
    person = Person.new
    person.Ride!
    expect(person.has_bike?).to be true
  
  end

  it 'returns the bike' do
    
  end

end



# don't have a bike
# have a bike

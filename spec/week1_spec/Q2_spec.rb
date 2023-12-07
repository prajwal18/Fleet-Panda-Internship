require './December/1st Week/Hackerrank/Q2'

# Q2
describe 'countingValleys' do
  it 'should return the number of valleys in the hike' do
    hike = 'UUDDDDUUDDUUDDUUDDDDDDUUUDUUDUUDUUDUUDDDUUUDDDDUUUDDUUDDDDUUU'
    expect(countingValleys(hike)).to eql(8)
  end

  it 'should return 0 when an empty string is supplied' do
    hike = ''
    expect(countingValleys(hike)).to eql(0)
  end

  it 'should raise NoMethodError error when an integer is provided instead of a string' do
    hike = 999
    expect { countingValleys(hike) }.to raise_error(NoMethodError)
  end
end

require './December/1st Week/Hackerrank/Q3'

# Q3
describe 'jumpingOnClouds' do
  it 'should return the minimum number of jumps required to finish the game' do
    game_seq = [0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0]
    expect(jumpingOnClouds(game_seq)).to eql(8)
  end

  it 'should return 0 when an empty array is supplied' do
    game_seq = []
    expect(jumpingOnClouds(game_seq)).to eql(0)
  end

  it 'should raise NoMethodError error when a boolean is provided instead of an array of integers' do
    game_seq = false
    expect { jumpingOnClouds(game_seq) }.to raise_error(NoMethodError)
  end
end

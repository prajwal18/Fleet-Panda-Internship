require './December/1st Week/Hackerrank/Q1'
require './December/1st Week/Hackerrank/Q2'
require './December/1st Week/Hackerrank/Q3'
require './December/1st Week/Hackerrank/Q4'

# Q1
describe 'sockMerchant' do
  it 'Sock Merchant, Test 1' do
    sock_array = [1, 2, 3, 4, 5, 8, 1, 3, 8, 4, 4, 7, 5]
    expect(sockMerchant(sock_array)).to eql(5)
  end
  
  it 'Sock Merchant, Test 2' do
    sock_array = [1, 2, 3, 4, 5, 8, 1, 3, 7, 6, 8, 10, 22, 8, 4, 4, 7, 5]
    expect(sockMerchant(sock_array)).to eql(6)
  end
  
  it 'Sock Merchant, Test 3' do
    sock_array = [1, 2, 3, 4, 5, 8, 1, 4, 7, 5]
    expect(sockMerchant(sock_array)).to eql(3)
  end
  
  it 'Sock Merchant, Test 4' do
    sock_array = [1, 2, 3, 4, 5, 8, 1, 1, 2, 2, 5, 8, 9, 9, 8, 6, 5, 4, 4, 7, 5]
    expect(sockMerchant(sock_array)).to eql(7)
  end
  
  it 'Sock Merchant, Test 5' do
    sock_array = [1, 2, 3, 4, 5, 1, 2, 3]
    expect(sockMerchant(sock_array)).to eql(3)
  end
end

# Q2
describe 'countingValleys' do
  it 'Counting Valleys, Test 1' do
    hike = 'UUDDDDUUDDUU'
    expect(countingValleys(hike)).to eql(2)
  end

  it 'Counting Valleys, Test 2' do
    hike = 'UUDDDDUUDDUUDDUUDDDDDDUUUDUUDUUDUUDUUDDDUUUDDDDUUUDDUUDDDDUUU'
    expect(countingValleys(hike)).to eql(8)
  end


  it 'Counting Valleys, Test 3' do
    hike = 'UUDDDDUDUU'
    expect(countingValleys(hike)).to eql(1)
  end

  it 'Counting Valleys, Test 4' do
    hike = 'UUDDDDDDDUUUDDUUUU'
    expect(countingValleys(hike)).to eql(1)
  end

  it 'Counting Valleys, Test 5' do
    hike = 'UDDDUUDDDUUU'
    expect(countingValleys(hike)).to eql(2)
  end
end

# Q3
describe 'jumpingOnClouds' do
  it 'Jumping on clouds, Test 1' do
    game_seq = [0, 0,1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0]
    expect(jumpingOnClouds(game_seq)).to eql(8)
  end

  it 'Jumping on clouds, Test 2' do
    game_seq = [0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1]
    expect(jumpingOnClouds(game_seq)).to eql(10)
  end

  it 'Jumping on clouds, Test 3' do
    game_seq = [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0]
    expect(jumpingOnClouds(game_seq)).to eql(6)
  end

  it 'Jumping on clouds, Test 4' do
    game_seq = [0, 0, 0, 1, 0, 0, 0]
    expect(jumpingOnClouds(game_seq)).to eql(3)
  end

  it 'Jumping on clouds, Test 5' do
    game_seq = [0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1]
    expect(jumpingOnClouds(game_seq)).to eql(8)
  end
end

# Q4
describe 'repeatedString' do
  it 'Repeated String, Test 1' do
    string = 'abaca'
    expect(repeatedString(string, 100)).to eql(60)
  end

  it 'Repeated String, Test 2' do
    string = 'kobra'
    expect(repeatedString(string, 100)).to eql(20)
  end

  it 'Repeated String, Test 3' do
    string = 'Kai'
    expect(repeatedString(string, 100)).to eql(33)
  end

  it 'Repeated String, Test 4' do
    string = 'Kara'
    expect(repeatedString(string, 100)).to eql(50)
  end

  it 'Repeated String, Test 5' do
    string = 'a'
    expect(repeatedString(string, 100)).to eql(100)
  end
end

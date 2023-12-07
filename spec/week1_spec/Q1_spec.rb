require './December/1st Week/Hackerrank/Q1'

# Q1
describe 'sockMerchant' do
  it 'counts the total number of pairs in the given array.' do
    sock_array = [1, 2, 3, 4, 5, 8, 1, 3, 8, 4, 4, 7, 5]
    expect(sockMerchant(sock_array)).to eql(5)
  end

  it 'does not contiains any pairs' do
    sock_array = [1, 2, 3, 4, 5, 8, 9, 11, 12]
    expect(sockMerchant(sock_array)).to eql(0)
  end

  it 'raises ArgumentError when invalid arguments are supplied' do
    sock_array = [1, 2, 3]
    expect { sockMerchant("Hello Boss", sock_array) }.to raise_error(ArgumentError)
  end
end

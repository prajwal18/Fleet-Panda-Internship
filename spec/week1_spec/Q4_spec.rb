require './December/1st Week/Hackerrank/Q4'

# Q4
describe 'repeatedString' do
  it "should return the number of 'a' in the first n characters of a substring" do
    string = 'abaca'
    expect(repeatedString(string, 100)).to eql(60)
  end

  it "should return 0 when the string from which the substring to be created is contains no a's" do
    string = 'ko'
    expect(repeatedString(string, 100)).to eql(0)
  end

  it 'should return NoMethodError error when an array of integers is provided insted of a string' do
    string = [1,2,3,4,5]
    expect { repeatedString(string, 100) }.to raise_error(NoMethodError)
  end
end
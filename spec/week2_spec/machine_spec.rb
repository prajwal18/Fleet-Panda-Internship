require './December/2nd Week/codecademy/5 OOP part 1/machine'

describe Computer do
  describe '#create' do
    my_computer = Computer.new('Prajwal', 'password')

    it 'should return print that a message after creating a new file' do
      expect do
        my_computer.create('Dragon Ball Z')
      end.to output(/A new file Dragon Ball Z was created by/).to_stdout
    end

    it 'should add a new user to the list of users' do
        computer2 = Computer.new("Kapoor", "password")
        users = Computer.get_users
        user_exists = users.keys.include? computer2.username
        expect(user_exists).to eql(true)
    end
  end
end

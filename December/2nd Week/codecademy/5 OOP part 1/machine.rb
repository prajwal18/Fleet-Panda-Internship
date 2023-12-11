#  In this project, we’ll use our newfound knowledge to create a class,
#  Machine, and generate instances of that class that can manipulate
#  imaginary files for us.

class Computer
  @@users = {}
  attr_reader :username, :files, :password

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = [password]
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new file #{filename} was created by #{@username} at #{time}"
  end

  def self.get_users
    @@users
  end
end

my_computer = Computer.new('Prajwal', 'my_random_password')

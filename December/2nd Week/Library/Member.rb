require_relative 'Transaction'

class Member
  attr_accessor :name, :age, :email

  @@members = []

  private_class_method :new

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  def create(name, age, email)
    return "Sorry, member with the email #{email} already exists." if does_member_exist_already(email)

    new_member = new(name, age, email)
    @@members << new_member
  end

  def self.does_member_exist_already(email)
    @@members.each do |member|
      return true if member.email == email
    end
    false
  end
end

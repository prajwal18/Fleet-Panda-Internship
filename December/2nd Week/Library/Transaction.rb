# Note a user can only rent one book at a time

class Transaction
  attr_reader :book, :member
  
  @@transactions = []


  private_class_method :new

  def initialize(book, member)
    @book = book
    @member = member
  end

  def self.create(book, member)
    @@transactions << new(book, member)
  end
end

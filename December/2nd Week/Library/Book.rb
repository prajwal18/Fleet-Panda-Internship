class Book
  attr_reader :is_available
  attr_accessor :name, :price
  
  private_class_method :new
  @@books = []

  def initialize(name, price)
    @name = name
    @price = price
    @is_available = true
  end

  def self.create(name, price)
    return "Sorry, the book with the name #{name} exists already." if does_book_exist_already(name)

    new_book = new(name, price)
    @@books << new_book
    new_book
  end

  def self.does_book_exist_already(name)
    @@books.each do |book|
      return true if book.name == name
    end
    false
  end

  def reserve_book
    @is_available = false
  end

  def return_book
    @is_available = true
  end

  def get_is_av
    @is_available
  end
end

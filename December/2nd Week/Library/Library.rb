require_relative 'Book'
require_relative 'Member'

class Library
  attr_accessor :name, :location, :capacity
  attr_reader :books, :members

  def initialize(name, location, capacity)
    @name = name
    @location = location
    @capacity = capacity
  end

  def add_book(book)
    @books = [] if @books.nil?
    @books << book
  end

  def remove_book(book_name)
    @books.reject! { |book| book.name == book_name }
  end

  def book?(book)
    @books.each do |lib_book|
      return true if lib_book.name == book.name
    end
    false
  end

  def clear_books_and_members
    @members = []
    @books = []
  end

  def register_member(member)
    return 'Sorry, library capacity exceed' if @members.length >= @capacity

    @members = [] if @members.nil?
    @members << member
  end

  def remove_member(member_name)
    @member.reject! { |member| member.name == member_name }
  end
end
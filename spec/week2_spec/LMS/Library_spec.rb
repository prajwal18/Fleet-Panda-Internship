require './December/2nd Week/Library/Library'
require './December/2nd Week/Library/Book'

describe Library do
  before(:all) do
    @my_library = Library.new('Kathmandu Library', 'Kathmandu', 150)
    @book1 = Book.create('Harry Potter', 99)
    @book2 = Book.create('Harry Pot Smoker', 19)
  end

  describe 'Initialization' do
    it 'should successfully create a new library' do
      expect { Library.new('Kathmandu Library', 'Kathmandu', 150) }.not_to raise_error
    end
    it 'should throw an error when trying to create a library with incorrect number of inputs' do
      expect { Library.new('Kolkata', 'Kolkata', 122, 99, false, true) }.to raise_error(ArgumentError)
    end
  end

  describe '#add_book' do
    before(:all) do
      @my_library.add_book(@book1)
      @my_library.add_book(@book2)
    end
    it 'should contain two books' do
      no_of_books = @my_library.books.length
      expect(no_of_books).to eql(2)
    end
    it 'should return true for books in the library' do
      is_book1_in_lib = @my_library.book?(@book1)
      is_book2_in_lib = @my_library.book?(@book2)
      expect(is_book1_in_lib && is_book2_in_lib).to eql(true)
    end
  end

  describe '#remove_book' do
  end
end

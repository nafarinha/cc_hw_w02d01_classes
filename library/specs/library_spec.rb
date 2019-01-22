require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @edin_library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")

    @model_library =
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ]
  end

  def test_get_books
    assert_equal(@model_library, @edin_library.get_books())
  end

  def test_search_book
    model_book = @model_library[0]
    assert_equal(model_book, @edin_library.search_book("lord_of_the_rings"))
  end

  def test_search_rental_details
    book_rental = @model_library[0][:rental_details]
    assert_equal(book_rental, @edin_library.search_rental_details("lord_of_the_rings"))
  end

  def test_add_new_book
    @edin_library.add_new_book("Dune")
    assert_equal(2, @edin_library.book_collection.length())
  end

  def test_change_rental
    @edin_library.change_rental("lord_of_the_rings", "Dan", "15/12/16")
    book_details = @edin_library.search_rental_details("lord_of_the_rings")

    assert_equal("Dan", book_details[:student_name])
    assert_equal("15/12/16", book_details[:date])
  end

end

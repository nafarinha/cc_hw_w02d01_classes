require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @city_library = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "Brave New World",
          rental_details: {
            student_name: "John",
            date: "04/15/16"
          }
        },
        {
          title: "Dune",
          rental_details: {
            student_name: "Kate",
            date: "07/20/16"
          }
        }
      ]
    )
  end

  def test_get_books
    assert_equal( @city_library, @city_library.get_books() )
  end

end

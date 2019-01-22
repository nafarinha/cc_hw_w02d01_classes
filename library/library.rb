class Library


  attr_accessor :book_title, :rentee_name, :rental_date, :book_collection

  def initialize(book_title, rentee_name, rental_date)

    @book_title = book_title
    @rentee_name = rentee_name
    @rental_date = rental_date
    @book = {
        title: book_title,
        rental_details: {
          student_name: rentee_name,
          date: rental_date
        }
      }
    @book_collection = [@book]
  end

#* Create a getter for the books
  def get_books()
    return @book_collection
  end

#* Create a method that takes in a book title and returns all of the information about that book.
  def search_book(title)
    for books in @book_collection
      return books if books[:title] == title
    end
  end

#* Create a method that takes in a book title and returns only the rental details for that book.
  def search_rental_details(title)
    for books in @book_collection
      return books[:rental_details] if books[:title] == title
    end
  end

#* Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
  def add_new_book(new_title)
    @book = {
      title: new_title,
      rental_details: {
      student_name: "",
      date: ""
      }
    }
    @book_collection.push(@book)
  end

#* Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def change_rental(book_title, student_name, return_date)

=begin
#This code will not work if it needs to cater for book title not found
    new_rental = search_rental_details(book_title)
    new_rental[:student_name] = student_name
    new_rental[:date] = return_date
=end
    return if book_title == new_rental = search_rental_details(book_title)
    new_rental[:student_name] = student_name
    new_rental[:date] = return_date
  end



  # END CLASS
end

require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Numbm 260", with: @book.NumBM_260
    fill_in "Author 260", with: @book.author_260
    fill_in "Booktype 260", with: @book.bookType_260
    fill_in "Datebegin 260", with: @book.dateBegin_260
    fill_in "Dateend 260", with: @book.dateEnd_260
    fill_in "Fullname 260", with: @book.fullname_260
    fill_in "Idbook 260", with: @book.idBook_260
    fill_in "Idstudent 260", with: @book.idStudent_260
    fill_in "Standard 260", with: @book.standard_260
    fill_in "Totaldate", with: @book.totalDate
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Numbm 260", with: @book.NumBM_260
    fill_in "Author 260", with: @book.author_260
    fill_in "Booktype 260", with: @book.bookType_260
    fill_in "Datebegin 260", with: @book.dateBegin_260
    fill_in "Dateend 260", with: @book.dateEnd_260
    fill_in "Fullname 260", with: @book.fullname_260
    fill_in "Idbook 260", with: @book.idBook_260
    fill_in "Idstudent 260", with: @book.idStudent_260
    fill_in "Standard 260", with: @book.standard_260
    fill_in "Totaldate", with: @book.totalDate
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end

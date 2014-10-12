require 'rails_helper'

feature "User adds book" do

  scenario 'user adds a book' do
    book = FactoryGirl.build(:book)
    visit new_book_path
    fill_in "Title", with: book.title
    fill_in "Author", with: book.author
    fill_in "Year", with: book.year
    fill_in "Category", with: book.category
    fill_in "Description", with: book.description
    click_on "Add New Book"
    expect(page).to have_content("Book was successfully added")
  end

  scenario 'Salesman tries to create a blank field' do
    book = FactoryGirl.create(:book)
    visit new_book_path
    click_on "Add New Book"
    expect(page).to have_content("Please fill in required information")
  end
end

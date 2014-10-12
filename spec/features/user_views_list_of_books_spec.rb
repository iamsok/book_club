require 'rails_helper'

feature "User views books" do

  scenario 'user views a list of book' do
    book = FactoryGirl.create(:book)
    book1 = FactoryGirl.create(:book)

    visit books_path

    expect(page).to have_content("Harry Potter")
    expect(page).to have_content("Harry Potter")
  end

  scenario 'user views a specific book and review' do
    book = FactoryGirl.create(:book)
    review = FactoryGirl.create(:review)

    visit books_path(book)
  end
end

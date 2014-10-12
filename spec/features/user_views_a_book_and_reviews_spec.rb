require 'rails_helper'

feature "User views a list of books" do

  scenario 'user views list of books' do
    book = FactoryGirl.create(:book)

    visit book_path
    click_on "Add Review"
    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    select review.rating, from: "Rating"
    click_on "Add New Review"
    expect(page).to have_content("Review was successfully added")
  end
end

require 'rails_helper'

feature "User adds review" do

  scenario 'user creates review for a book' do
    book = FactoryGirl.create(:book)
    review = FactoryGirl.build(:review)

    visit book_path(book)
    click_on "Add Review"
    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    select review.rating, from: "Rating"
    click_on "Add New Review"
    expect(page).to have_content("Review was successfully added")
  end

  scenario 'user tries creating review with empty fields' do
    book = FactoryGirl.create(:book)
    review = FactoryGirl.build(:review)

    visit book_path(book)
    click_on "Add Review"
    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    select review.rating, from: "Rating"
    click_on "Add New Review"
    expect(page).to have_content("Review was successfully added")
    save_and_open_page
  end
end

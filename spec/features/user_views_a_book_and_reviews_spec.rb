require 'rails_helper'

feature "User adds review" do

  scenario 'user creates review for a book' do
    review = FactoryGirl.build(:review)
    click_on "Harry Potter{n}"
    visit book_path(book)
    fill_in "Title", with: review.title
    fill_in "Body", with: review.bpdy
    select review.rating, from: "Rating"
    click_on "Add review"
    expect(page).to have_content("Review created successfully")
  end
end

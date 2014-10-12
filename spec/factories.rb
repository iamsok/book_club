FactoryGirl.define do
  factory :book do
    sequence :title do |n|
     "Harry Potter{n}"
    end
    author "J.K Rowling"
    year 2001
    category "fiction"
    description "Best Book Ever!"
  end
end

FactoryGirl.define do
  factory :review do
    title "This show sucks"
    body "I didnt like this book because it was dull"
    rating 3
    association :book
  end
end

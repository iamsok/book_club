class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def show
    @book = Book.find(params[:book_id])
    @reviews = Review.find(params[:id])
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(review_params)
      if @review.save
        flash[:notice] = 'Review was successfully added!'
        redirect_to book_path(@book)
      else
        flash[:notice] = 'Please fill in required information'
        render :new
      end
  end


  private
  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end
end

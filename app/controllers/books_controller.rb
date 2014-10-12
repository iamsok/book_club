class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        flash[:notice] = 'Book was successfully added!'
        redirect_to books_path
      else
        flash[:notice] = 'Please fill in required information'
        render :new
      end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :year, :category, :description)
  end
end

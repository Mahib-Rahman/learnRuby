class BooksController < ApplicationController
  def index
    @movies = Movie.all
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = @book.reviews.build
  end
end
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @books = Book.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = @movie.reviews.build
  end
end
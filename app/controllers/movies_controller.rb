class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.order(year: :desc, title: :asc) # Sort by title descending
  end

  def show
    @movie = Movie.find(params[:id])
  end

end

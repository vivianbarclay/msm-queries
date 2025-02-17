class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all.order({ title: :desc }) # Sort by title descending
  end

  def show
    @movie = Movie.find(params[:id])
  end

end

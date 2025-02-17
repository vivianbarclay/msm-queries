class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all.order({ dob: :desc }) # Sort by DOB descending
  end

  def show
    @director = Director.find(params[:id]) 
    @movies = Movie.where(director_id: @director.id).order(year: :desc) # Fetch movies for the director
  end
  
end

class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all.order({ dob: :desc, name: :asc })
  end

  def show
    @director = Director.find(params[:id]) 
    @movies = Movie.where(director_id: @director.id).order(year: :desc)
  end
  
  def youngest
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first
  end

  def eldest
    @eldest_director = Director.where.not(dob: nil).order(dob: :asc).first
  end

end

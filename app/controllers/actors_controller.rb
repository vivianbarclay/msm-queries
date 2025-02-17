class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.order(Arel.sql("dob ASC, split_part(name, ' ', -1) ASC"))
  end
  
  def show
    @actor = Actor.find(params[:id])
    @characters = @actor.characters.includes(:movie)  # Eager load movies
  end
end

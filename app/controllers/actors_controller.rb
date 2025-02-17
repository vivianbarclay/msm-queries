class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all.order({ dob: :desc }) # Sort by DOB descending
  end

  def show
    @actor = Actor.find(params[:id])
  end

end

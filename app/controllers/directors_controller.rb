class DirectorsController < ApplicationController

  def list_directors
    @list_of_directors = Director.all
  end

  def show_director_details
    @director = Director.find_by({:id => params[:id]})
  end

end

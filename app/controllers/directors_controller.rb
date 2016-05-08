class DirectorsController < ApplicationController

  def list_directors
    @list_of_directors = Director.all
  end

  def show_director_details
    @director = Director.find_by({:id => params[:id]})
  end

  def delete_director
    @director = Director.find_by({:id => params[:id]})
    @director.destroy
  end

end

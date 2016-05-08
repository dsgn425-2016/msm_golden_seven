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

  def new_director_form

  end

  def create_director_row
    director = Director.new
    director.dob = params[:dob]
    director.name = params[:name]
    director.bio = params[:bio]
    director.image_url = params[:image_url]
    director.save

    redirect_to("http://localhost:3000/directors/"+director.id.to_s)
  end

end

class MoviesController < ApplicationController

  def  index
    @list_of_movies = Movie.all
  end

  def show
    @d= Movie.find_by ({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    @d = Movie.new
    @d.title = params[:the_title]
    @d.year = params[:the_year]
    @d.duration = params[:the_duration]
    @d.description = params[:the_description]
    @d.image_url = params[:the_image_url]
    @d.director_id = params[:the_director_id]
    @d.save
    redirect_to("/movies")
  end

  def delete
    @d= Movie.find_by ({ :id => params[:id]})
    @d.destroy
    redirect_to("/movies")
  end

  def edit_form
    @d = Movie.find_by ( {:id=>params[:id]} )
  end

  def update_row
    @d = Movie.find_by ( {:id=>params[:id]} )
    @d.title = params[:new_title]
    @d.year = params[:new_year]
    @d.duration = params[:new_duration]
    @d.description = params[:new_description]
    @d.image_url = params[:new_image_url]
    @d.director_id = params[:new_director_id]
    @d.save
    redirect_to("/movies/#{params[:id]}")
  end

end

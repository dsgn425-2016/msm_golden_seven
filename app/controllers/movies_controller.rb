class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    p = Movie.find_by({:id => params[:id]})
    @movie_id = p.id
    @movie_title = p.title
    @movie_year = p.year
    @movie_img = p.image_url
    @movie_duration = p.duration
    @movie_description = p.description
  end

  def new_form
  end

  def create_row
    p = Movie.new
    p.title = params[:title]
    p.year = params[:year]
    p.duration = params[:duration]
    p.description = params[:description]
    p.image_url = params[:image_url]
    p.save

    pid = p.id.to_s

    redirect_to("/movies/"+pid)

  end

  def delete_row
    p = Movie.find_by({:id => params[:id]})
    @movie_title = p.title
    p.destroy
  end

  def edit_form
    @movie = Movie.find_by({:id => params[:id]})
  end

  def update_row
    p = Movie.find_by({:id => params[:id]})
    p.title = params[:title]
    p.year = params[:year]
    p.description = params[:description]
    p.duration = params[:duration]
    p.image_url = params[:image_url]
    p.save

    redirect_to("/movies/"+params[:id])
  end

end

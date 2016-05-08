class MoviesController < ApplicationController

  def list_movies
    @list_of_movies = Movie.all
  end

  def show_movie_details
    @movie = Movie.find_by({:id => params[:id]})
  end

  def delete_movie
    @movie = Movie.find_by({:id => params[:id]})
    @movie.destroy
  end

  def new_movie_form

  end

  def create_movie_row
    movie = Movie.new
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save

    redirect_to("http://localhost:3000/movies/"+movie.id.to_s)
  end

  def edit_movie
    @movie = Movie.find_by({:id => params[:id]})
  end

  def update_movie_row
    movie = Movie.find_by({:id => params[:id]})
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save

    redirect_to("http://localhost:3000/movies/"+movie.id.to_s)
  end
end

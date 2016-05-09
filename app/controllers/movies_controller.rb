class MoviesController < ApplicationController
  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["descirption"]
    @movie.image_url = params["image_url"]
    @movie.save
    redirect_to("http://localhost:3000/movies")
  end

  def index
    @list_of_movies = Movie.all
  end

  def show
  end
    @movie = Movie.find(params[:id])

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_movie
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save
    render("show")
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end


end

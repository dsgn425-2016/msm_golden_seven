class MoviesController < ApplicationController

  #Create actions
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

  #Read actions
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  #Update actions

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

  #Delete actions

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end


end

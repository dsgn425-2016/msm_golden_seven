class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def view
    @movie = Movie.find(params[:id])
  end

  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy

  end

  def new_form
  end

  def new_row
    @movie=Movie.new
    @movie.title=params[:title]
    @movie.year=params[:year]
    @movie.duration=params[:duration]
    @movie.description=params[:description]
    @movie.image_url =params[:image_url]
    @movie.save

    render("view")

  end
  def edit_form
    @movie=Movie.find(params[:id])
  end

  def edit_row
    @movie=Movie.find(params[:id])
    @movie.title=params[:title]
    @movie.year=params[:year]
    @movie.duration=params[:duration]
    @movie.description=params[:description]
    @movie.image_url=params[:image_url]
    @movie.save

    render ("view")

  end

end

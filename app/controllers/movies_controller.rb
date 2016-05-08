class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    @movie.save

    render("show.html.erb")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    @movie.save
    render("show")
  end

  def delete
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.destroy
    render("delete_movies")
  end
end

class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render("index.html.erb")
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
    render("show.html.erb")
  end

  def destroy
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
    m.destroy
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.save
    redirect_to("/movies")
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
    render("show.html.erb")
  end

end

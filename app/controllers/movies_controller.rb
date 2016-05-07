class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end
  def new_form
    render("new_form.html.erb")
  end

  def create_row
  p = Photo.new
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save
end

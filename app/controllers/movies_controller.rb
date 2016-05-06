class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render("index.html.erb")
  end

  def show

  end

  def destroy

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
    render("index.html.erb")
  end

  def edit_form

  end

  def update_row

  end

end

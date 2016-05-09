class MoviesController < ApplicationController

  def index
    @movies = Movie.all

    render ('index.html.erb')
  end

  def show
    @movie = Movie.find_by({ :id => params[:id] })
    render("show.html.erb")

  end

  def new_form

    render('new_form.html.erb')
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    @movie.save

    redirect_to("http://localhost:3000/movies/#{@movie.id}")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id] })

    render("edit_form.html.erb")
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id] })
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    @movie.save

    redirect_to("http://localhost:3000/movies/#{@movie.id}")
  end

  def destroy
    @movie = Movie.find_by({ :id => params[:id] })

    @movie.destroy
  end

end

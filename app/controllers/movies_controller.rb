class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end
  def new_form

    render("new_form.html.erb")
  end

  def create_row
  @movie = Movie.new
  @movie.title = params[:title]
  @movie.year = params[:year]
  @movie.duration = params[:duration]
  @movie.description = params[:description]
  @movie.image_url = params[:image_url]
  @movie.save
  redirect_to("/movies")
end

def destroy
  @movie = Movie.find_by({ :id => params[:id] })
  @movie.destroy
  redirect_to("http://localhost:3000/movies")
end

def edit
  @movie = Movie.find_by({ :id => params[:id] })

end

def update
  @movie = Movie.find_by({ :id => params[:id] })
  @movie.title = params[:the_title]
  @movie.year = params[:the_year]
  @movie.duration = params[:the_duration]
  @movie.description = params[:the_description]
  @movie.image_url = params[:the_image_url]
  @movie.save
  redirect_to("/movies")
end

end

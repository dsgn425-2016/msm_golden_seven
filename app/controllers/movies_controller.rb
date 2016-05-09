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
  m = Movie.new
  m.title = params[:title]
  m.year = params[:year]
  m.duration = params[:duration]
  m.description = params[:description]
  m.image_url = params[:image_url]
  m.save
  redirect_to("http://localhost:3000/movies")
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
  m = Movie.find_by({ :id => params[:id] })
  m.title = params[:the_title]
  m.year = params[:the_year]
  m.duration = params[:the_duration]
  m.description = params[:the_description]
  m.image_url = params[:the_image_url]
  m.save
  redirect_to("http://localhost:3000/movies")
end

end

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    # @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    # @movie.query_word = params[:query_word]
    # @movie.director_id = params[:director_id]


    bill = 'trump'
    john = system('python web_scraper_5.py' + bill)   #note that when this runs, it runs from the project file, in this case /msm_golden_seven
    @movie.description = john

    @movie.save
    a = params[:id].to_s
    redirect_to("http://localhost:3000/movies/" + a)
    ### ABE FUCKING AROUND



    ### End of Fucking Around

  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    # @movie.director_id = params[:director_id]
    @movie.save
    a = params[:id].to_s
    redirect_to("http://localhost:3000/movies/" + a)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end
end

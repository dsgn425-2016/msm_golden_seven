class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end
  def new_form

    render("new_form.html.erb")
  end

  def create_row
    @director = Director.new
    @director.name = params[:title]
    @director.bio = params[:year]
    @director.dob = params[:duration]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors")
  end

  def destroy
    @director = Director.find_by({ :id => params[:id] })
    @director.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def edit
    @director = Director.find_by({ :id => params[:id] })

  end

  def update
    @director = Director.find_by({ :id => params[:id] })
    @director.name = params[:title]
    @director.bio = params[:year]
    @director.dob = params[:duration]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors")
  end
end

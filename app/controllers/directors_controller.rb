class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("index.html.erb")
  end

  def show
    @director = Director.find_by({ :id => params[:id]})
    render("show.html.erb")
  end

  def destroy
    @director = Director.find_by({ :id => params[:id]})
    @director.destroy
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show.html.erb")
  end

  def edit_form
    @director = Director.find_by({ :id => params[:id]})
  end

  def update_row
    @director = Director.find_by({ :id => params[:id]})
    @director.dob = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save
    render("show.html.erb")
  end

end

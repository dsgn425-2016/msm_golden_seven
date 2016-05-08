class DirectorsController < ApplicationController

  #Create actions
  def new_form

  end

  def create_row
    @director = Director.new
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.dob = params["dob"]
    @director.image_url = params["image_url"]
    @director.save
    redirect_to("http://localhost:3000/directors")
  end

  #Read actions
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  #Update actions

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_director
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save
    render("show")
  end

  #Delete actions

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
  end


end

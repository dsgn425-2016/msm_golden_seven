class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params["id"])
  end

  def delete_row
  @director = Director.find(params["id"])

  @director.destroy

  redirect_to("http://localhost:3000/directors")

  end

  def edit_form
    @director = Director.find(params["id"])

  end

  def update
    @director = Director.find(params["id"])
    @director.dob = params["the_dob"]
    @director.name = params["the_name"]
    @director.bio = params["the_bio"]
    @director.image_url = params["the_image_url"]

    @director.save

    render("show")

  end

  def create_form

  end

  def new_row
    @director = Director.new
    @director.dob = params["the_dob"]
    @director.name = params["the_name"]
    @director.bio = params["the_bio"]
    @director.image_url = params["the_image_url"]

    @director.save

    redirect_to("http://localhost:3000/directors")

  end

end

class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])
  end

  def delete_row
  @actor = Actor.find(params["id"])

  @actor.destroy

  redirect_to("http://localhost:3000/actors")

  end

  def edit_form
    @actor = Actor.find(params["id"])

  end

  def update
    @actor = Actor.find(params["id"])
    @actor.dob = params["the_dob"]
    @actor.name = params["the_name"]
    @actor.bio = params["the_bio"]
    @actor.image_url = params["the_image_url"]

    @actor.save

    render("show")

  end

  def create_form

  end

  def new_row
    @actor = Actor.new
    @actor.dob = params["the_dob"]
    @actor.name = params["the_name"]
    @actor.bio = params["the_bio"]
    @actor.image_url = params["the_image_url"]

    @actor.save

    redirect_to("http://localhost:3000/actors")

  end

end

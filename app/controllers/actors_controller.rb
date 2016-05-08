class ActorsController < ApplicationController

  #Create actions
  def new_form

  end

  def create_row
    @actor = Actor.new
    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.dob = params["dob"]
    @actor.image_url = params["image_url"]
    @actor.save
    redirect_to("http://localhost:3000/actors")
  end

  #Read actions
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  #Update actions

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_actor
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]
    @actor.save
    render("show")
  end

  #Delete actions

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
  end


end

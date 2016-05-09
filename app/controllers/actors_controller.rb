class ActorsController < ApplicationController



def index
  @list_of_actors = Actor.all
end

def show
  @actor = Actor.find_by({:id => params[:id]})
  render ("/actors/show.html.erb")
end

def new_form

end

def create_row
  @actor = Actor.new
  @actor.name = params["name"]
  @actor.bio = params["bio"]
  @actor.dob = params["dob"]
  @actor.image_url = params["image_url"]
  @actor.save
  redirect_to("/actors")
end

def destroy
  @actor = Actor.find_by({ :id => params[:id] })
  @actor.destroy
end

def edit
  @actor = Actor.find_by({ :id => params[:id] })

end

def update
  @actor = Actor.find_by({ :id => params[:id] })
  @actor.name = params[:name]
  @actor.bio = params[:bio]
  @actor.dob = params[:dob]
  @actor.image_url = params[:image_url]
  @actor.save
  redirect_to("/actors")
end

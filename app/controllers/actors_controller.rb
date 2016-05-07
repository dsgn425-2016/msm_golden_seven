class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end
  def new_form

    render("new_form.html.erb")
  end

  def create_row
    @actor = Actor.new
    @actor.name = params[:title]
    @actor.bio = params[:year]
    @actor.dob = params[:duration]
    @actor.image_url = params[:image_url]
    @actor.save
    redirect_to("/actors")
  end

  def destroy
    @actor = Actor.find_by({ :id => params[:id] })
    @actor.destroy
    redirect_to("http://localhost:3000/actors")
  end

  def edit
    @actor = Actor.find_by({ :id => params[:id] })

  end

  def update
    @actor = Actor.find_by({ :id => params[:id] })
    @actor.name = params[:title]
    @actor.bio = params[:year]
    @actor.dob = params[:duration]
    @actor.image_url = params[:image_url]
    @actor.save
    redirect_to("/actors")
  end
end

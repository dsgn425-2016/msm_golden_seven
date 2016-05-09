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
    a = Actor.new
    a.name = params[:name]
    a.bio = params[:bio]
    a.dob = params[:dob]
    a.image_url = params[:image_url]
    a.save
    redirect_to("http://localhost:3000/actors")
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
    a = Actor.find_by({ :id => params[:id] })
    a.name = params[:name]
    a.bio = params[:bio]
    a.dob = params[:dob]
    a.image_url = params[:image_url]
    a.save
    redirect_to("http://localhost:3000/actors")
  end
end

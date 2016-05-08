class ActorsController < ApplicationController

  def index

    @actors = Actor.all
    render ('index.html.erb')

  end

  def show
    @actor = Actor.find_by({ :id => params[:id] })
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    redirect_to("http://localhost:3000/actors/#{@actor.id}")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id] })
    render('edit_form.html.erb')
  end

  def update_row
    @actor = Actor.find_by({ :id => params[:id] })
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    redirect_to("http://localhost:3000/actors/#{@actor.id}")

  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy

  end

















end

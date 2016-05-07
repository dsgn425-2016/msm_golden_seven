class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def view
    @actor = Actor.find(params[:id])
  end

  def delete
    @actor = Actor.find(params[:id])
    @actor.destroy

  end

  def new_form
  end

  def new_row
    @actor=Actor.new
    @actor.name=params[:name]
    @actor.dob=params[:dob]
    @actor.bio=params[:bio]
    @actor.image_url=params[:image_url]
    @actor.save

    render("view")

  end
  def edit_form
    @actor=Actor.find(params[:id])
  end

  def edit_row
    @actor=Actor.find(params[:id])
    @actor.name=params[:name]
    @actor.dob=params[:dob]
    @actor.bio=params[:bio]
    @actor.image_url=params[:image_url]
    @actor.save

    render ("view")

  end

end

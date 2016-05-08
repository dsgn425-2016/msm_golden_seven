class ActorsController < ApplicationController

  def list_actors
    @list_of_actors = Actor.all
  end

  def show_actor_details
    @actor = Actor.find_by({:id => params[:id]})
  end

  def delete_actor
    @actor = Actor.find_by({:id => params[:id]})
    @actor.destroy
  end

  def new_actor_form

  end

  def create_actor_row
    actor = Actor.new
    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save

    redirect_to("http://localhost:3000/actors/"+actor.id.to_s)
  end

  def edit_actor
    @actor = Actor.find_by({:id => params[:id]})
  end

  def update_actor_row
    actor = Actor.find_by({:id => params[:id]})
    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save

    redirect_to("http://localhost:3000/actors/"+actor.id.to_s)
  end
end

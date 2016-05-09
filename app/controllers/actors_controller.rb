class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    p = Actor.find_by({:id => params[:id]})
    @actor_id = p.id
    @actor_name = p.name
    @actor_dob = p.dob
    @actor_img = p.image_url
    @actor_bio = p.bio
  end

  def delete_row
    p = Actor.find_by({:id => params[:id]})
    @actor_name = p.name
    p.destroy
  end

  def edit_form
    @actor = Actor.find_by({:id => params[:id]})
  end

  def update_row
    p = Actor.find_by({:id => params[:id]})
    p.name = params[:name]
    p.dob = params[:dob]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("/actors/"+params[:id])
  end

  def new_form

  end

  def create_row
    p = Actor.new
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    pid = p.id.to_s

    redirect_to("/actors/"+pid)

  end
end

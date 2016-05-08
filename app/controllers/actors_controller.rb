class ActorsController < ApplicationController

  def  index
    @list_of_actors = Actor.all
  end

  def show
    @d= Actor.find_by ({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    @d = Actor.new
    @d.name = params[:the_name]
    @d.bio = params[:the_bio]
    @d.dob = params[:the_dob]
    @d.image_url = params[:the_image]
    @d.save
    redirect_to("/actors")
  end

  def delete
    @d= Actor.find_by ({ :id => params[:id]})
    @d.destroy
    redirect_to("/actors")
  end

  def edit_form
    @d = Actor.find_by ( {:id=>params[:id]} )
  end

  def update_row
    @d = Actor.find_by ( {:id=>params[:id]} )
    @d.name = params[:new_name]
    @d.bio = params[:new_bio]
    @d.dob = params[:new_dob]
    @d.image_url = params[:new_image]
    @d.save
    redirect_to("/actors/#{params[:id]}")
  end

end

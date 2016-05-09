class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    p = Director.find_by({:id => params[:id]})
    @director_id = p.id
    @director_name = p.name
    @director_dob = p.dob
    @director_img = p.image_url
    @director_bio = p.bio
  end

  def new_form

  end

  def create_row
    p = Director.new
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    pid = p.id.to_s

    redirect_to("/directors/"+pid)
  end

  def delete_row
    p = Director.find_by({:id => params[:id]})
    @director_name = p.name
    p.destroy
  end
  def edit_form
    @director = Director.find_by({:id => params[:id]})
  end

  def update_row
    p = Director.find_by({:id => params[:id]})
    p.name = params[:name]
    p.dob = params[:dob]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("/directors/"+params[:id])
  end
end

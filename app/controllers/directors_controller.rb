class DirectorsController < ApplicationController

  def  index
    @list_of_directors = Director.all
  end

  def show
    @d= Director.find_by ({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    @d = Director.new
    @d.name = params[:the_name]
    @d.bio = params[:the_bio]
    @d.dob = params[:the_dob]
    @d.image_url = params[:the_image]
    @d.save
    redirect_to("/directors")
  end

  def delete
    @d= Director.find_by ({ :id => params[:id]})
    @d.destroy
  end

  def edit_form
    @d = Director.find_by ( {:id=>params[:id]} )
  end

  def update_row
    @d = Director.find_by ( {:id=>params[:id]} )
    @d.name = params[:new_name]
    @d.bio = params[:new_bio]
    @d.dob = params[:new_dob]
    @d.image_url = params[:new_image]
    @d.save
    redirect_to("/directors/#{params[:id]}")
  end

end

class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end
  def view
    @director = Director.find(params[:id])
  end

  def delete
    @director = Director.find(params[:id])
    @director.destroy

  end

  def new_form
  end

  def new_row
    @director=Director.new
    @director.name=params[:name]
    @director.dob=params[:dob]
    @director.bio=params[:bio]
    @director.image_url=params[:image_url]
    @director.save

    render("view")

  end
  def edit_form
    @director=Director.find(params[:id])
  end

  def edit_row
    @director=Director.find(params[:id])
    @director.name=params[:name]
    @director.dob=params[:dob]
    @director.bio=params[:bio]
    @director.image_url=params[:image_url]
    @director.save

    render ("view")

  end

end

class DirectorsController < ApplicationController

  def index

    @director = Director.all

  end

  def show
    @director = Director.find_by({ :id => params[:id] })
    render("show.html.erb")
  end

  def new_form

    render("new_form.html.erb")
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    redirect_to("http://localhost:3000/directors/#{@director.id}")
  end


end

class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end


  def new_form
    render("new_form.html.erb")
  end

  def create_row
    d = Director.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @director = Director.find_by({ :id => params[:id] })
    @director.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def edit
    @director = Director.find_by({ :id => params[:id] })

  end

  def update
    d = Director.find_by({ :id => params[:id] })
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]
  d.save
    redirect_to("http://localhost:3000/directors")
  end
end

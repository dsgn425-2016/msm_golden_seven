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


end

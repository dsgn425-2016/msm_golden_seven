class DirectorsController < ApplicationController

  def index

    @director = Director.all

  end

  def show
    @director = Director.find_by({ :id => params[:id] })
    render("show.html.erb")
  end

end

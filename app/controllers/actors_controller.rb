class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def actors
render("actors.html.erb")
end
  end

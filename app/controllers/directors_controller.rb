class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def directors
render("directors.html.erb")
end
  end

class DirectorController < ApplicationController

  def show_directors
    @list_of_directors = Director.all
  end

end

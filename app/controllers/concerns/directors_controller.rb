class DirectorsController < ApplicationController
  def index
    @list_of_directors = director.all
  end

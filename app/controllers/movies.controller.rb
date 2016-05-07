class MoviessController < ApplicationController
  def index
    @movies = Movie.all
  end
